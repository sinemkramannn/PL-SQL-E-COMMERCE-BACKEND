create or replace package ProductFavoritesAndFilterManagement is
  -- Public function and procedure declarations
     PROCEDURE AddFavorites(p_userId IN INT, p_productId IN INT,p_productattributeId IN INT);
     PROCEDURE RemoveFavorite(p_UserID IN INT, p_ProductID IN INT, p_ProductAttributeID IN INT);
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
        p_SortBy          IN VARCHAR2 DEFAULT 'FavoriteCount',  -- 'Price' or 'FavoriteCount'
        p_SortOrder       IN VARCHAR2 DEFAULT 'DESC'            -- 'ASC' or 'DESC'
    ) RETURN SYS_REFCURSOR;



end ProductFavoritesAndFilterManagement;
/
