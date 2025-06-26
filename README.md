💼 HRMS Database Project
This project is a Human Resource Management System (HRMS) database built using MySQL. It stores and manages employee records, leave requests, department structures, job roles, and manager assignments, with full referential integrity.

# human-resource-management-system-task3
# HRMS Database 📊

Human Resource Management System (HRMS) के लिए एक MySQL डेटाबेस schema जिसमें Employees, Department, Leave Request, Manager और Job टेबल्स शामिल हैं।

---

📌 Features
✅ employees table capturing personal and professional details.
✅ department table describing department metadata.
✅ job table defining job roles and salary ranges.
✅ manager table tracking departmental managers.
✅ leave_request table managing employee leave data.

✅ पूरी टेबल्स:
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM leave_request;
SELECT * FROM manager;
SELECT * FROM job;

🧩 Partial Columns:
SELECT emp_id, first_name, salary FROM employees;
SELECT dept_id, location FROM department;
SELECT manager_name FROM manager;
...

🔎 Filtering Conditions:
SELECT * FROM department WHERE location='mumbai';
SELECT first_name FROM employees WHERE gender='female';
SELECT emp_id, status FROM leave_request WHERE location='hyderabad' AND status='Approve';

⇅ Ascending / Descending Order:
SELECT first_name, last_name, hire_date FROM employees ORDER BY hire_date ASC;
SELECT * FROM manager ORDER BY salary DESC LIMIT 3;

💡 Tips & Notes
WHERE क्लॉज़ फ़िल्टर करता है, फ़िर ORDER BY करता है।

Ascending = ASC (default), Descending = DESC.

LIMIT के साथ pagination या Top‑N queries करें।

🧪 Test Queries

SELECT * FROM leave_request WHERE status='Approve' ORDER BY req_id;

SELECT * FROM job ORDER BY max_salary DESC LIMIT 5;

---

## 🔧 Requirements

- MySQL 5.7+ (या MariaDB)
- SQL क्लाइंट (MySQL Workbench, HeidiSQL, phpMyAdmin, आदि)

---

## 🚀 सेटअप (How to use)

1. क्लोन या SQL स्क्रिप्ट डाउनलोड करें:
   ```bash
   git clone https://github.com/Devvv07/human-resource-management-system-task3
   cd hrms-db
