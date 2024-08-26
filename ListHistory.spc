create or replace package ListHistory is

    FUNCTION GetOrderHistory(p_UserID IN INT) RETURN SYS_REFCURSOR;

end ListHistory;
/
