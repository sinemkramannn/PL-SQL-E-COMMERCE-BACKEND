CREATE OR REPLACE PACKAGE BODY ProductFavoritesAndFilterManagement IS

    PROCEDURE AddFavorites(p_UserID IN INT, p_ProductID IN INT, p_ProductAttributeID IN INT) IS
        v_Count INT;-- zaten var mý yok mu bakmak için
    BEGIN
        -- Kullanicinin favoriye eklediði ürünün zaten var olup olmadýgini kontrol eden fonk
        SELECT COUNT(*) INTO v_Count
        FROM UserFavorites
        WHERE UserID = p_UserID 
          AND ProductID = p_ProductID 
          AND ProductAttributeID = p_ProductAttributeID;

        IF v_Count > 0 THEN
            -- zaten favorilerde varsa
            DBMS_OUTPUT.PUT_LINE('Bu ürün zaten favorilerde: Kullanici ' || p_UserID || ', Ürün ' || p_ProductID || ', Özellik ' || p_ProductAttributeID);
        ELSE
            -- Favorilerde yoksa ekle
            INSERT INTO UserFavorites (FavoriteID, UserID, ProductID, ProductAttributeID)
            VALUES (FavoriteID_Seq.NEXTVAL, p_UserID, p_ProductID, p_ProductAttributeID);
            
            DBMS_OUTPUT.PUT_LINE('Kullanici ' || p_UserID || ' için ürün favorilere eklendi: ' || p_ProductID || ' (Özellik: ' || p_ProductAttributeID || ')');
        END IF;

    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Bu favori zaten mevcut.');
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Geçersiz kullanici veya ürün.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Hata olustu: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'Ürün favorilere eklenirken bir hata olustu: ' || SQLERRM);
    END AddFavorites;
    
    
     PROCEDURE RemoveFavorite(p_UserID IN INT, p_ProductID IN INT, p_ProductAttributeID IN INT) IS
   BEGIN
      DELETE FROM UserFavorites
      WHERE UserID = p_UserID AND ProductID = p_ProductID AND ProductAttributeID = p_ProductAttributeID;

      IF SQL%ROWCOUNT > 0 THEN --iþlem yapýlan satýr sayýsýný döner
         DBMS_OUTPUT.PUT_LINE('Kullanici ' || p_UserID || ' için ürün favorilerden çikarildi: ' || p_ProductID || ' (Özellik: ' || p_ProductAttributeID || ')');
      ELSE -- = 0
         DBMS_OUTPUT.PUT_LINE('Bu ürün favorilerde bulunamadi: Kullanici ' || p_UserID || ', Ürün ' || p_ProductID || ', Özellik ' || p_ProductAttributeID);
      END IF;
   
   EXCEPTION
      WHEN OTHERS THEN
         DBMS_OUTPUT.PUT_LINE('Hata olustu: ' || SQLERRM);
         RAISE_APPLICATION_ERROR(-20002, 'Ürün favorilerden çikarilirken bir hata olustu: ' || SQLERRM);
   END RemoveFavorite;
    FUNCTION FilterProducts(
        p_CategoryID      IN INT,
        p_MinPrice        IN NUMBER,
        p_MaxPrice        IN NUMBER,
        p_AttributeName1  IN VARCHAR2,
        p_AttributeValue1 IN VARCHAR2,
        p_AttributeName2  IN VARCHAR2,
        p_AttributeValue2 IN VARCHAR2,
        p_AttributeName3  IN VARCHAR2,
        p_AttributeValue3 IN VARCHAR2,
        p_SortBy          IN VARCHAR2 DEFAULT 'FavoriteCount',  -- 'Price' or 'FavoriteCount' hangi kriterler
        p_SortOrder       IN VARCHAR2 DEFAULT 'DESC'            -- 'ASC' or 'DESC'
    ) RETURN SYS_REFCURSOR IS
        v_Result SYS_REFCURSOR;
    BEGIN
        OPEN v_Result FOR
        SELECT 
            p.ProductID, 
            p.ProductName, 
            p.Price, 
            COUNT(uf.FavoriteID) AS FavoriteCount
        FROM 
            Products p
        JOIN -- ayný tabloda 3 farklý özelliði almak için join 
            ProductAttributes pa1 ON p.ProductID = pa1.ProductID AND pa1.AttributeName = p_AttributeName1 AND pa1.AttributeValue = p_AttributeValue1
        JOIN 
            ProductAttributes pa2 ON p.ProductID = pa2.ProductID AND pa2.AttributeName = p_AttributeName2 AND pa2.AttributeValue = p_AttributeValue2
        JOIN 
            ProductAttributes pa3 ON p.ProductID = pa3.ProductID AND pa3.AttributeName = p_AttributeName3 AND pa3.AttributeValue = p_AttributeValue3
        LEFT JOIN -- fava eklenmemiþ ürünleri de alalým
            UserFavorites uf ON p.ProductID = uf.ProductID
        WHERE 
            p.CategoryID = p_CategoryID-- ýd ve aralýk kontrol
            AND p.Price BETWEEN p_MinPrice AND p_MaxPrice
        GROUP BY -- ayný ürünlerin fav sayýlarý için
            p.ProductID, p.ProductName, p.Price
        ORDER BY -- neye göre sýralama olacak
            CASE 
                WHEN p_SortBy = 'FavoriteCount' THEN COUNT(uf.FavoriteID) 
                ELSE p.Price 
            END || ' ' || p_SortOrder,
            p.ProductName;

        RETURN v_Result;
    END FilterProducts;
END ProductFavoritesAndFilterManagement;
/
