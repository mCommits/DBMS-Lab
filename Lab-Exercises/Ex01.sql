CREATE TABLE Client_Master (  
    Client_No VARCHAR2(6),  
    Name VARCHAR2(20),  
    Address1 VARCHAR2(30),  
    Address2 VARCHAR2(30),  
    City VARCHAR2(15),  
    State VARCHAR2(15),  
    Pincode NUMBER(6),  
    Bal_Due NUMBER(10,2)  
);

CREATE TABLE Product_Master ( 
    Product_NO VARCHAR2(6), 
    Description VARCHAR2(20), 
    Profit_percentage NUMBER(6), 
    Unit_Measure VARCHAR2(10), 
    Qty_On_Hand NUMBER(6), 
    Reorder_Lvl NUMBER(6), 
    Sell_Price NUMBER(7,2), 
    Cost_Price NUMBER(7,2) 
);

ALTER TABLE Client_Master ADD DOB DATE;

ALTER TABLE Client_Master MODIFY Client_No NUMBER;

ALTER TABLE Client_Master DROP COLUMN DOB;

ALTER TABLE Product_Master RENAME COLUMN Sell_Price TO SellPrice;

ALTER TABLE Product_Master RENAME TO ProductMaster;

DROP TABLE ProductMaster;
DROP TABLE Client_Master;
