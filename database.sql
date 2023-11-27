-- Create the database schema
CREATE SCHEMA quiz_db;

-- Create the transactions table
CREATE TABLE quiz_db.transactions (
    id SERIAL PRIMARY KEY, -- This will be the transaction ID
    customer_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(100) NOT NULL,
    total_amount_due NUMERIC(10, 2) NOT NULL
);

-- Create the transaction_items table
CREATE TABLE quiz_db.transaction_items (
    transaction_id INT NOT NULL, -- This will reference the transactions table
    barcode VARCHAR(20) NOT NULL,
    item_name VARCHAR(50) NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL,
    quantity INT NOT NULL,
    subtotal NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (transaction_id, barcode), -- This will be the composite key
    FOREIGN KEY (transaction_id) REFERENCES quiz_db.transactions(id) -- This will enforce the constraint
);