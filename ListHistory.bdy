create or replace package body ListHistory is

 -- Kullanicinin geçmi? alisverislerini listeleyen prosedür
      FUNCTION GetOrderHistory(p_UserID IN INT) RETURN SYS_REFCURSOR IS
        v_Result SYS_REFCURSOR;
    BEGIN
        OPEN v_Result FOR
        SELECT 
            o.OrderID,
            o.OrderDate,
            i.ProductID,
            p.ProductName,
            i.Quantity,
            i.Price,
            (i.Quantity * i.Price) AS TotalPrice
        FROM 
            Orders o
        JOIN 
            OrderItems i ON o.OrderID = i.OrderID
        JOIN 
            Products p ON i.ProductID = p.ProductID
        WHERE 
            o.UserID = p_UserID
        ORDER BY 
            o.OrderDate DESC;--azalan
        
        RETURN v_Result;
    END GetOrderHistory;
    
end ListHistory;
/
