CREATE OR REPLACE PACKAGE BODY BUYINGBASKET IS

    PROCEDURE BuyBasket(p_UserID IN INT) IS
        v_OrderID INT;-- oluþturulacak sirapiþ id
        v_TotalAmount NUMBER(10, 2) := 0; --toplam tutar
    BEGIN
        -- 1. Yeni bir sipari? kaydi olustur
        INSERT INTO Orders (UserID, OrderDate, TotalAmount)
        VALUES (p_UserID, SYSDATE, 0)
        RETURNING OrderID INTO v_OrderID;-- yeni eklenen id diger degiskene atar.

        -- 2. Sepetteki ürünleri OrderItems tablosuna tasý
        FOR item IN (
            SELECT b.ProductID, b.ProductAttributeID, b.Quantity, (b.Quantity * p.Price) AS TotalPrice
            FROM Basket b
            JOIN Products p ON b.ProductID = p.ProductID -- bilgilerini alabilmek için
            WHERE b.UserID = p_UserID
        ) LOOP
            -- OrderItems tablosuna ekle
            INSERT INTO OrderItems (OrderID, ProductID, ProductAttributeID, Quantity, Price)
            VALUES (v_OrderID, item.ProductID, item.ProductAttributeID, item.Quantity, item.TotalPrice);

            -- Toplam tutari hesapla
            v_TotalAmount := v_TotalAmount + item.TotalPrice;
        END LOOP;

        -- 3. Siparisin toplam tutarini güncelle
        UPDATE Orders
        SET TotalAmount = v_TotalAmount
        WHERE OrderID = v_OrderID;

        -- 4. Sepeti bosalt
        DELETE FROM Basket WHERE UserID = p_UserID;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END BuyBasket;

END BUYINGBASKET;
/
