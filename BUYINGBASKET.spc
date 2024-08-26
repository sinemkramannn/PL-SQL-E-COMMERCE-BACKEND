CREATE OR REPLACE PACKAGE BUYINGBASKET IS
    -- Kullanýcýnýn sepetini satýn almayý gerçekleþtiren prosedür
    PROCEDURE BuyBasket(p_UserID IN INT);
END BUYINGBASKET;
/
