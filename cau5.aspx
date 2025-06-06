﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
        header {
            background-color: #212529;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        
        nav {
            display: flex;
            gap: 20px;
        }
        
        nav a {
            color: white;
            text-decoration: none;
        }
        
        nav a:first-child {
            font-weight: bold;
        }
        
        nav a:nth-child(2) {
            color: #adb5bd;
        }
        
        .search-container {
            display: flex;
            gap: 10px;
        }
        
        .search-container input {
            padding: 8px 15px;
            border-radius: 4px;
            border: none;
            width: 300px;
        }
        
        .search-container button {
            padding: 8px 15px;
            border-radius: 4px;
            border: 1px solid #6c757d;
            background-color: transparent;
            color: white;
            cursor: pointer;
        }
        
        main {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .header h1 {
            font-size: 32px;
            color: #212529;
        }
        
        .add-btn {
            background-color: #0d6efd;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        
        .employee-table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .employee-table th {
            background-color: #f8f9fa;
            padding: 15px;
            text-align: left;
            font-weight: bold;
            border-bottom: 1px solid #dee2e6;
        }
        
        .employee-table td {
            padding: 15px;
            border-bottom: 1px solid #dee2e6;
        }
        
        .action-buttons {
            display: flex;
            gap: 8px;
        }
        
        .edit-btn {
            background-color: #ffc107;
            color: black;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        .delete-btn {
            background-color: #dc3545;
            color: white;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        /* Modal styles */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        
        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            width: 500px;
            max-width: 90%;
        }
        
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .modal-header h2 {
            margin: 0;
        }
        
        .close-btn {
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }
        
        .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }
        
        .submit-btn {
            background-color: #0d6efd;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">HR Management</div>
        <nav>
            <a href="#">Home</a>
            <a href="#">Contact</a>
        </nav>
        <div class="search-container">
            <input type="text" placeholder="Search...">
            <button>Search</button>
        </div>
    </header>
    
    <main>
        <div class="header">
            <h1>Employee</h1>
            <button class="add-btn" id="addEmployeeBtn">+ Add</button>
        </div>
        
        <table class="employee-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Position</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="employeeTableBody">
                <tr>
                    <td>1</td>
                    <td>Fatima Beatriz</td>
                    <td>Fatima Beatriz@gmail.com</td>
                    <td>0985674321</td>
                    <td>Staff</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(1)">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(1)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Gabriel Hanna</td>
                    <td>Gabriel Hanna@gmail.com</td>
                    <td>0353674231</td>
                    <td>Staff</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(2)">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(2)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Charles Diya</td>
                    <td>Charles Diya@gmail.com</td>
                    <td>0347658833</td>
                    <td>Staff</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(3)">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(3)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Frank Lamdo</td>
                    <td>Frank Lamdo@gmail.com</td>
                    <td>0975444768</td>
                    <td>Manager</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(4)">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(4)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Louis Tom</td>
                    <td>Louis Tom@gmail.com</td>
                    <td>0789568223</td>
                    <td>Staff</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(5)">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(5)">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </main>
    
    <!-- Add/Edit Employee Modal -->
    <div class="modal" id="employeeModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="modalTitle">Add Employee</h2>
                <button class="close-btn" id="closeModalBtn">&times;</button>
            </div>
            <form id="employeeForm">
                <input type="hidden" id="employeeId">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" id="phone" required>
                </div>
                <div class="form-group">
                    <label for="position">Position</label>
                    <select id="position" required>
                        <option value="Staff">Staff</option>
                        <option value="Manager">Manager</option>
                        <option value="Director">Director</option>
                        <option value="HR">HR</option>
                    </select>
                </div>
                <button type="submit" class="submit-btn">Save</button>
            </form>
        </div>
    </div>
    
    <!-- Delete Confirmation Modal -->
    <div class="modal" id="deleteModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>Confirm Delete</h2>
                <button class="close-btn" id="closeDeleteModalBtn">&times;</button>
            </div>
            <p>Are you sure you want to delete this employee?</p>
            <div style="display: flex; justify-content: flex-end; gap: 10px; margin-top: 20px;">
                <button id="cancelDeleteBtn" style="padding: 8px 16px; border: 1px solid #ced4da; background-color: #f8f9fa; border-radius: 4px; cursor: pointer;">Cancel</button>
                <button id="confirmDeleteBtn" style="padding: 8px 16px; background-color: #dc3545; color: white; border: none; border-radius: 4px; cursor: pointer;">Delete</button>
            </div>
        </div>
    </div>
    
    <script>
        // DOM Elements
        const addEmployeeBtn = document.getElementById('addEmployeeBtn');
        const employeeModal = document.getElementById('employeeModal');
        const closeModalBtn = document.getElementById('closeModalBtn');
        const employeeForm = document.getElementById('employeeForm');
        const modalTitle = document.getElementById('modalTitle');
        const employeeTableBody = document.getElementById('employeeTableBody');
        const deleteModal = document.getElementById('deleteModal');
        const closeDeleteModalBtn = document.getElementById('closeDeleteModalBtn');
        const cancelDeleteBtn = document.getElementById('cancelDeleteBtn');
        const confirmDeleteBtn = document.getElementById('confirmDeleteBtn');
        
        // Employee data
        const employees = [
            { id: 1, name: 'Fatima Beatriz', email: 'Fatima Beatriz@gmail.com', phone: '0985674321', position: 'Staff' },
            { id: 2, name: 'Gabriel Hanna', email: 'Gabriel Hanna@gmail.com', phone: '0353674231', position: 'Staff' },
            { id: 3, name: 'Charles Diya', email: 'Charles Diya@gmail.com', phone: '0347658833', position: 'Staff' },
            { id: 4, name: 'Frank Lamdo', email: 'Frank Lamdo@gmail.com', phone: '0975444768', position: 'Manager' },
            { id: 5, name: 'Louis Tom', email: 'Louis Tom@gmail.com', phone: '0789568223', position: 'Staff' }
        ];
        
        let currentEmployeeId = null;
        let nextId = 6;
        
        // Event Listeners
        addEmployeeBtn.addEventListener('click', openAddEmployeeModal);
        closeModalBtn.addEventListener('click', closeEmployeeModal);
        employeeForm.addEventListener('submit', saveEmployee);
        closeDeleteModalBtn.addEventListener('click', closeDeleteModal);
        cancelDeleteBtn.addEventListener('click', closeDeleteModal);
        confirmDeleteBtn.addEventListener('click', confirmDelete);
        
        // Functions
        function openAddEmployeeModal() {
            modalTitle.textContent = 'Add Employee';
            employeeForm.reset();
            document.getElementById('employeeId').value = '';
            employeeModal.style.display = 'flex';
        }
        
        function editEmployee(id) {
            const employee = employees.find(emp => emp.id === id);
            if (employee) {
                modalTitle.textContent = 'Edit Employee';
                document.getElementById('employeeId').value = employee.id;
                document.getElementById('name').value = employee.name;
                document.getElementById('email').value = employee.email;
                document.getElementById('phone').value = employee.phone;
                document.getElementById('position').value = employee.position;
                employeeModal.style.display = 'flex';
            }
        }
        
        function closeEmployeeModal() {
            employeeModal.style.display = 'none';
        }
        
        function saveEmployee(e) {
            e.preventDefault();
            
            const id = document.getElementById('employeeId').value;
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const position = document.getElementById('position').value;
            
            if (id) {
                // Update existing employee
                const index = employees.findIndex(emp => emp.id === parseInt(id));
                if (index !== -1) {
                    employees[index] = { id: parseInt(id), name, email, phone, position };
                }
            } else {
                // Add new employee
                const newEmployee = { id: nextId++, name, email, phone, position };
                employees.push(newEmployee);
            }
            
            renderEmployeeTable();
            closeEmployeeModal();
        }
        
        function deleteEmployee(id) {
            currentEmployeeId = id;
            deleteModal.style.display = 'flex';
        }
        
        function closeDeleteModal() {
            deleteModal.style.display = 'none';
        }
        
        function confirmDelete() {
            if (currentEmployeeId) {
                const index = employees.findIndex(emp => emp.id === currentEmployeeId);
                if (index !== -1) {
                    employees.splice(index, 1);
                    renderEmployeeTable();
                }
            }
            closeDeleteModal();
        }
        
        function renderEmployeeTable() {
            employeeTableBody.innerHTML = '';
            
            employees.forEach(employee => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td>${employee.phone}</td>
                    <td>${employee.position}</td>
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="editEmployee(${employee.id})">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee(${employee.id})">Delete</button>
                    </td>
                `;
                employeeTableBody.appendChild(tr);
            });
        }
    </script>
</body>
</html>

