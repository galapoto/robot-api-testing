# 🤖 Robot Framework API Testing Project – JSONPlaceholder

This project showcases beginner-to-intermediate level **API test automation** using **Robot Framework** and **RequestsLibrary**, targeting the public [JSONPlaceholder](https://jsonplaceholder.typicode.com) API.

It covers common HTTP methods like `GET`, `POST`, and `DELETE`, simulates invalid data testing, and demonstrates proper use of reusable variables.

---

## 📁 Project Structure

api-testing/
├── tests/
│ ├── test_get_user.robot
│ ├── test_get_user_deep_json.robot
│ ├── test_post_create_user.robot
│ ├── test_post_invalid_user.robot
│ └── test_delete_user.robot
├── variables.robot
├── output/ # Robot logs (log.html, report.html, output.xml)
├── .gitignore
└── README.md


---

## 🔧 Tools Used

| Tool               | Purpose                     |
|--------------------|-----------------------------|
| Robot Framework     | Main test automation tool   |
| RequestsLibrary     | To send HTTP requests        |
| JSONPlaceholder     | Public fake REST API         |
| Python 3.x          | Runtime for Robot Framework  |

---

## 🔍 Test Features

✅ `GET /users/1` – retrieve and validate user data  
✅ Validate **nested JSON** values like city, company, and geo  
✅ `POST /users` – simulate user creation  
✅ `POST` with invalid data – test negative flows  
✅ `DELETE /users/1` – simulate deletion  
✅ `variables.robot` – shared test data across all tests  

---

## ▶️ How to Run Tests

1. **Install Python**
   [https://www.python.org/downloads/](https://www.python.org/downloads/)

2. **Install Robot Framework + RequestsLibrary**
   ```bash
   pip install robotframework
   pip install robotframework-requests

3. Run a test
Navigate to the /tests folder and run:
robot test_get_user.robot

4. View logs
    After each run, Robot Framework will generate:
        log.html – detailed log
        report.html – test summary
        output.xml – for CI tools

📦 .gitignore Setup
These files are ignored from version control:
    output/
    log.html
    report.html
    output.xml
    __pycache__/
    *.pyc
    .env

💼 Why This Project Matters
T       his project is designed to:
        Demonstrate core API testing techniques
        Prepare you for real-world test automation roles
        Be GitHub portfolio–ready for recruiters and hiring managers

✍️ Author
        Vitus Okwesirieze Idi

⭐️ Star this repo if you found it helpful!