CREATE TABLE orders.invoice
(
		InvoiceNo INT,
		StockCode varchar(250), 
		Description varchar(250),
		Quantity INT(20), 
		InvoiceDate DATE, 
		UnitPrice double, 
		CustomerID INT NOT NULL, 
		Country varchar(20),
		primary Key (CustomerID)
	
);


    InvoiceNo INT AUTO_INCREMENT,
    StockCode VARCHAR(250), 
    Description VARCHAR(250),
    Quantity INT, 
    InvoiceDate DATE, 
    UnitPrice DOUBLE, 
    CustomerID INT NOT NULL, 
    Country VARCHAR(20),
    PRIMARY KEY (InvoiceNo)
);

