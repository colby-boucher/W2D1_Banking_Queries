SELECT p.NAME as 'Product', pt.NAME as 'Type' 
FROM product AS p LEFT JOIN product_type AS pt ON pt.PRODUCT_TYPE_CD = p.PRODUCT_TYPE_CD; 

SELECT b.NAME AS 'Branch Name', b.CITY AS 'City', e.LAST_NAME AS 'Last Name', e.TITLE AS 'Title'
FROM branch AS b LEFT JOIN employee AS e ON b.BRANCH_ID = e.ASSIGNED_BRANCH_ID;

SELECT UNIQUE TITLE FROM employee;

SELECT e.LAST_NAME AS 'Last Name', e.TITLE AS 'Title', m.LAST_NAME AS 'Manager Name', m.TITLE AS 'Manager Title'
FROM employee AS e JOIN employee AS m ON e.SUPERIOR_EMP_ID = m.EMP_ID;

SELECT p.NAME AS 'Product Name', a.AVAIL_BALANCE AS 'Availible Balance', i.LAST_NAME AS 'Customer Last Name'
FROM product AS p RIGHT JOIN account AS a ON p.PRODUCT_CD = a.PRODUCT_CD
LEFT JOIN customer AS c ON a.CUST_ID = c.CUST_ID 
LEFT JOIN individual AS i ON c.CUST_ID = i.CUST_ID;

SELECT i.LAST_NAME AS 'Last Name', act.AMOUNT, act.FUNDS_AVAIL_DATE, act.TXN_DATE, act.TXN_TYPE_CD
FROM acc_transaction AS act 
JOIN account AS a ON act.ACCOUNT_ID = a.ACCOUNT_ID
JOIN customer AS c ON a.CUST_ID = c.CUST_ID 
JOIN individual AS i ON c.CUST_ID = i.CUST_ID 
WHERE i.LAST_NAME LIKE 'T%';