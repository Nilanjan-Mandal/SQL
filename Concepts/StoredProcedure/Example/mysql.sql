DELIMITER $$

DROP PROCEDURE IF EXISTS pr_buy_products $$

CREATE PROCEDURE pr_buy_products ()
BEGIN     
    DECLARE v_product_code VARCHAR(20);
    DECLARE v_price INT;

    -- Assuming 'product_code' is the primary key or unique identifier for PRODUCTS
    SELECT product_code, price
    INTO v_product_code, v_price
    FROM PRODUCTS
    WHERE product_name = 'Iphone 13 Pro Max'; 

    -- Insert into sales table
    INSERT INTO sales (order_date, product_code, quantity_ordered, sale_price)
    VALUES (CURRENT_DATE(), v_product_code, 1, v_price);

    -- Update products table
    UPDATE PRODUCTS
    SET quantity_remaining = quantity_remaining - 1,
        quantity_sold = quantity_sold + 1
    WHERE product_code = v_product_code;

    SELECT 'Product Sold!' AS Message; -- Select a message to indicate success

END $$

DELIMITER ;
