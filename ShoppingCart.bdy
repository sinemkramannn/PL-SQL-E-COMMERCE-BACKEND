CREATE OR REPLACE PACKAGE BODY ShoppingCart IS

    -- Sepette ürünün var olup olmadýðýný kontrol eden fonksiyon (Private)
    FUNCTION IsProductInBasket(
        p_UserID IN INT,
        p_ProductID IN INT,
        p_ProductAttributeID IN INT DEFAULT NULL
    ) RETURN BOOLEAN IS
        v_Count INT;
    BEGIN
        SELECT COUNT(*)
        INTO v_Count
        FROM Basket
        WHERE UserID = p_UserID
        AND ProductID = p_ProductID
        AND (p_ProductAttributeID IS NULL OR ProductAttributeID = p_ProductAttributeID);

        RETURN v_Count > 0;
    END IsProductInBasket;

    -- Ürün ve ürün özelliðinin geçerliliðini kontrol eden fonksiyon (Private)
    FUNCTION IsValidProduct(
        p_ProductID IN INT,
        p_ProductAttributeID IN INT
    ) RETURN BOOLEAN IS
        v_Count INT;
    BEGIN
        SELECT COUNT(*)
        INTO v_Count
        FROM Products p
        LEFT JOIN ProductAttributes pa ON p.ProductID = pa.ProductID
        WHERE p.ProductID = p_ProductID
        AND (p_ProductAttributeID IS NULL OR pa.AttributeID = p_ProductAttributeID);

        RETURN v_Count > 0;
    END IsValidProduct;

    -- Sepete ürün ekleme fonksiyonu (Public)
    FUNCTION AddToBasket(
        p_UserID IN INT,
        p_ProductID IN INT,
        p_ProductAttributeID IN INT DEFAULT NULL,
        p_Quantity IN INT DEFAULT 1
    ) RETURN VARCHAR2 IS
    BEGIN
        -- Ürün ve ürün özelliði geçerli mi?
        IF NOT IsValidProduct(p_ProductID, p_ProductAttributeID) THEN
            RETURN 'Geçersiz ürün veya ürün özelliði.';
        END IF;

        IF IsProductInBasket(p_UserID, p_ProductID, p_ProductAttributeID) THEN
            -- Eðer ürün zaten sepette varsa miktarýný artýr
            UPDATE Basket
            SET Quantity = Quantity + p_Quantity
            WHERE UserID = p_UserID
            AND ProductID = p_ProductID
            AND (p_ProductAttributeID IS NULL OR ProductAttributeID = p_ProductAttributeID);
        ELSE
            -- Eðer ürün sepette yoksa yeni bir kayýt ekle
            INSERT INTO Basket (UserID, ProductID, ProductAttributeID, Quantity)
            VALUES (p_UserID, p_ProductID, p_ProductAttributeID, p_Quantity);
        END IF;
        
        RETURN 'Ürün baþarýyla sepete eklendi.';
    END AddToBasket;

    -- Sepetten ürün çýkarma prosedürü (Public)
    PROCEDURE RemoveFromBasket(
        p_UserID IN INT,
        p_ProductID IN INT,
        p_ProductAttributeID IN INT DEFAULT NULL,
        p_Quantity IN INT DEFAULT 1
    ) IS
    BEGIN
        -- Ürün sepette mevcut mu kontrol et
        IF NOT IsProductInBasket(p_UserID, p_ProductID, p_ProductAttributeID) THEN
            DBMS_OUTPUT.PUT_LINE('Sepette bu ürün bulunamadý.');
            RETURN;
        END IF;

        -- Eðer mevcut miktar çýkarýlacak miktardan büyükse, sadece miktarý azalt
        UPDATE Basket
        SET Quantity = Quantity - p_Quantity
        WHERE UserID = p_UserID
        AND ProductID = p_ProductID
        AND (p_ProductAttributeID IS NULL OR ProductAttributeID = p_ProductAttributeID)
        AND Quantity > p_Quantity;

        -- Eðer mevcut miktar çýkarýlacak miktara eþit veya küçükse, satýrý tamamen sil
        DELETE FROM Basket
        WHERE UserID = p_UserID
        AND ProductID = p_ProductID
        AND (p_ProductAttributeID IS NULL OR ProductAttributeID = p_ProductAttributeID)
        AND Quantity <= p_Quantity;
    END RemoveFromBasket;

    -- Kullanýcýnýn sepet içeriðini döndüren fonksiyon (Public)
    FUNCTION GetBasketContent(
        p_UserID IN INT
    ) RETURN SYS_REFCURSOR IS
        v_Result SYS_REFCURSOR;
    BEGIN
        OPEN v_Result FOR
        SELECT 
            b.BasketID, 
            p.ProductName, 
            pa.AttributeName, 
            pa.AttributeValue, 
            b.Quantity, 
            (b.Quantity * p.Price) AS TotalPrice
        FROM 
            Basket b
        JOIN 
            Products p ON b.ProductID = p.ProductID
        LEFT JOIN 
            ProductAttributes pa ON b.ProductAttributeID = pa.AttributeID
        WHERE 
            b.UserID = p_UserID;

        RETURN v_Result;
    END GetBasketContent;

END ShoppingCart;
/
