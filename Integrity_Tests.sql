-- =====================================================================
-- DATA INTEGRITY TESTS - Inventory Management (PostgreSQL)
-- File    : Integrity_Tests.sql
-- Run FIRST: Inventory_Management.sql
-- =====================================================================
-- Every command below is SUPPOSED TO FAIL. PostgreSQL protects the data
-- with primary keys, foreign keys and CHECK constraints. Run each test
-- separately (select it and press F5) and read the red error message.
-- No data is changed by any test.
-- =====================================================================

-- TEST 1: Foreign key - stock transaction for a product that does not exist
-- Product 999 is not in the products table, so the foreign key
-- fk_trans_product rejects the row.
INSERT INTO stock_transactions
       (transaction_id, product_id, warehouse_id, transaction_date,
        transaction_type, quantity, unit_cost)
VALUES (201, 999, 1, '2026-11-02', 'IN', 50, 100.00);
-- Expected error:
--   ERROR:  insert or update on table "stock_transactions" violates foreign key constraint "fk_trans_product"
--   DETAIL:  Key (product_id)=(999) is not present in table "products".

-- TEST 2: CHECK constraint - negative quantity
-- A quantity must be greater than 0 (ck_trans_quantity), so a negative
-- number is rejected.
INSERT INTO stock_transactions
       (transaction_id, product_id, warehouse_id, transaction_date,
        transaction_type, quantity, unit_cost)
VALUES (201, 1, 1, '2026-11-02', 'IN', -5, 100.00);
-- Expected error:
--   ERROR:  new row for relation "stock_transactions" violates check constraint "ck_trans_quantity"
--   DETAIL:  Failing row contains (201, 1, 1, 2026-11-02, IN, -5, 100.00).

-- TEST 3: CHECK constraint - wrong transaction type
-- Only 'IN' or 'OUT' are allowed (ck_trans_type).
INSERT INTO stock_transactions
       (transaction_id, product_id, warehouse_id, transaction_date,
        transaction_type, quantity, unit_cost)
VALUES (201, 1, 1, '2026-11-02', 'ADD', 5, 100.00);
-- Expected error:
--   ERROR:  new row for relation "stock_transactions" violates check constraint "ck_trans_type"
--   DETAIL:  Failing row contains (201, 1, 1, 2026-11-02, ADD, 5, 100.00).

-- TEST 4: Primary key - duplicate transaction ID
-- Transaction ID 1 already exists. A primary key value must be unique.
INSERT INTO stock_transactions
       (transaction_id, product_id, warehouse_id, transaction_date,
        transaction_type, quantity, unit_cost)
VALUES (1, 1, 1, '2026-11-02', 'IN', 5, 100.00);
-- Expected error:
--   ERROR:  duplicate key value violates unique constraint "pk_stock_transactions"
--   DETAIL:  Key (transaction_id)=(1) already exists.

-- TEST 5: Foreign key - deleting a category that is still used
-- Category 1 (Electronics) still has products. PostgreSQL refuses to
-- delete it, so no product is left without a category.
DELETE FROM categories
WHERE category_id = 1;
-- Expected error:
--   ERROR:  update or delete on table "categories" violates foreign key constraint "fk_products_category" on table "products"
--   DETAIL:  Key (category_id)=(1) is still referenced from table "products".

-- ======================== END OF FILE ================================
