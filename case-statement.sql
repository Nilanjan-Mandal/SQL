--Please find out from the employees table who is VIP and Non-VIPS

desc employees;

select firstName,email,reportsTo,
CASE
WHEN jobtitle in ("Sales Rep","Sales Manager%") THEN "Non-VIP"
ELSE "VIP"
END as employee_type
FROM employees;
