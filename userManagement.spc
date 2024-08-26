create or replace package userManagement is

  -- Author  : SINEM
  -- Created : 17.08.2024 15:39:48
  -- Purpose : User management functions and procedures including login and password management.
  
    FUNCTION LoginFunc(f_username IN VARCHAR2, f_password IN VARCHAR2) RETURN BOOLEAN;
    PROCEDURE ChangePassword(p_username IN VARCHAR2, p_OldPassword IN VARCHAR2, p_NewPassword IN VARCHAR2);
    
END userManagement;
/
