USE AP;

DELETE Vendors
WHERE VendorID NOT IN 
   (SELECT DISTINCT VendorID FROM Invoices);
