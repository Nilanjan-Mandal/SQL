-- DataBase : STUDENT (MYSQL)
--            TABLE(SALES & PRODUCTS)

-- REQUIREMENT: FOR EVERY 13 PRO MAX SALE MODIFY THE DATABASE TABLE ACCORDINGLY.
-- SOLUTION: WE NEED TO UPDATE THE PRODUCT TABLE (QUANTITY AND REMAINING), 
--           IN THIS  CIRCUMSTANCES WE NEED TO USE THE STORED PROCEDURE. 


-- Create a Procedure, Basic Syntax
create or replace procedure pr_buy_products
as 
    v_product_code  varchar(20), 
    v_price         INT; 
begin 
    select product_code, price
    -- Store the value into variables. 
    into v_product_code, v_price
    from PRODUCTS
    where product_name = 'Iphone 13 Pro max'; 

    insert into sales (order_date, product_code, quantity_ordered, sale_price) values (current_date, v_product_code, 1, (v_price * 1))

    update PRODUCTS
    set quantity_remaining = (quantity_remaining - 1)
    , set quantity_sold = (quantity_sold + 1)
    where product_code = v_product_code;

    dbms_output.put_line('Product Sold!'); 

end;




-- exec pr_buy_products