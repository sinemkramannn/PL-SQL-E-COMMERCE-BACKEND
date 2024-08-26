CREATE OR REPLACE PACKAGE ProductManagement IS
    -- Paket dy?yndan eri?ilebilecek prosedürler ve fonksiyonlar
    PROCEDURE AddProduct(p_ProductName IN VARCHAR2, p_CategoryID IN INT, p_Price IN NUMBER);
    PROCEDURE DeleteProduct(p_ProductID IN INT);
END ProductManagement;
/
