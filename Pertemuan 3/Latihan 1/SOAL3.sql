/*
	1. Alias yang Tidak Konsisten:
	Dalam kueri, digunakan alias C dan O untuk tabel Sales.Customers dan Sales.Orders, tetapi di bagian 
SELECT dan ON, masih merujuk ke nama tabel lengkap (Customers dan Orders). Seharusnya digunakan alias 
yang sudah ditetapkan secara konsisten.

	2. Nama Tabel Tidak Konsisten:
	Dalam bagian ON, seharusnya dirujuk pada alias (C dan O), bukan nama tabel aslinya.
*/

SELECT 
    C.custid, 
    C.companyname, 
    O.orderid, 
    O.orderdate 
FROM 
    Sales.Customers AS C   
INNER JOIN 
    Sales.Orders AS O     
ON 
    C.custid = O.custid;
