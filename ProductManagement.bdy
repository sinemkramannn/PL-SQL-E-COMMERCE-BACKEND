CREATE OR REPLACE PACKAGE BODY ProductManagement IS



    -- �r�n ekleme prosed�r�
    PROCEDURE AddProduct(p_ProductName IN VARCHAR2,p_CategoryID IN INT,p_Price IN NUMBER) IS
      BEGIN
         INSERT INTO Products (ProductID, ProductName, CategoryID, Price) VALUES (ProductID_Seq.NEXTVAL, p_ProductName, p_CategoryID, p_Price);

         DBMS_OUTPUT.PUT_LINE('�r�n basariyla eklendi: ' || p_ProductName);

         EXCEPTION  
           WHEN OTHERS THEN
             DBMS_OUTPUT.PUT_LINE('Hata olu?tu: ' || SQLERRM);
             RAISE_APPLICATION_ERROR(-20001, '�r�n eklenirken bir hata olustu: ' || SQLERRM);
        
    END AddProduct;
        
   

    -- �r�n silme prosed�r�
    PROCEDURE DeleteProduct(p_ProductID IN INT) IS
    BEGIN
        DELETE FROM Products
        WHERE ProductID = p_ProductID;

        -- �ikti
        DBMS_OUTPUT.PUT_LINE('�r�n ba?aryyla silindi: ' || p_ProductID);

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Hata olustu: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20002, '�r�n silinirken bir hata olustu: ' || SQLERRM);
    END DeleteProduct;

END ProductManagement;
/
