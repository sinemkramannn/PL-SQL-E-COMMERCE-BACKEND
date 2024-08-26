CREATE OR REPLACE PACKAGE ShoppingCart IS
    -- Sepete ürün ekleme fonksiyonu
    FUNCTION AddToBasket(
        p_UserID IN INT,
        p_ProductID IN INT,
        p_ProductAttributeID IN INT DEFAULT NULL,
        p_Quantity IN INT DEFAULT 1
    ) RETURN VARCHAR2;

    -- Sepetten ürün çýkarma prosedürü
    PROCEDURE RemoveFromBasket(
        p_UserID IN INT,
        p_ProductID IN INT,
        p_ProductAttributeID IN INT DEFAULT NULL,
        p_Quantity IN INT DEFAULT 1
    );

    -- Kullanýcýnýn sepet içeriðini döndüren fonksiyon
    FUNCTION GetBasketContent(
        p_UserID IN INT
    ) RETURN SYS_REFCURSOR;
END ShoppingCart;
/
