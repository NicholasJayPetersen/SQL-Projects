USE AP;
GO

DROP TRIGGER IF EXISTS Invoices_DELETE;
GO

CREATE TRIGGER Invoices_DELETE
	ON Invoices
	AFTER DELETE
AS
INSERT INTO InvoiceArchive 
	(InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal,
	    PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate)
	SELECT InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal,
	    PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate 
	FROM Deleted;