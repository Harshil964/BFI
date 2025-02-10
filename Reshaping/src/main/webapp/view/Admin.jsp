<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
   <style>
   /* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #EDEBF5;
    margin: 0;
    padding: 0;
}

h1, h2 {
    color: #3D52A0;
    font-weight: bold;
}

/* Container */
.max-w-7xl {
    max-width: 1120px;
    margin: 0 auto;
    padding: 20px;
}

.min-h-screen {
    min-height: 100vh;
}

/* Buttons */
button {
    padding: 10px 20px;
    background-color: #3D52A0;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #7091E6;
}

/* Tabs */
.tabs {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
}

.tab-button {
    background-color: #3D52A0;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.tab-button:hover {
    background-color: #7091E6;
}

.tab-content {
    display: none;
}

.tab-content.active {
    display: block;
}

/* Tables */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

table, th, td {
    border: 1px solid #3D52A0;
}

th, td {
    padding: 12px 15px;
    text-align: left;
}

th {
    background-color: #3D52A0;
    color: white;
}

td {
    background-color: #f4f7fc;
}

caption {
    caption-side: top;
    font-size: 1.2em;
    margin-bottom: 10px;
}

/* Input Fields */
input, select {
    padding: 8px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    width: 100%;
    box-sizing: border-box;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #3D52A0;
}

/* Dialog */
#addUserForm, #editUserForm {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    border: 2px solid #3D52A0;
    border-radius: 8px;
    padding: 20px;
    width: 300px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
}

form button {
    margin-top: 10px;
}

/* Status Badges */
.badge {
    display: inline-block;
    padding: 4px 8px;
    border-radius: 4px;
    font-size: 12px;
    font-weight: bold;
}

.badge.success {
    background-color: #28a745;
    color: white;
}

.badge.destructive {
    background-color: #dc3545;
    color: white;
}

.badge.default {
    background-color: #ffc107;
    color: black;
}
   
   </style>
    <!-- Add any necessary CSS for Tailwind or custom styles -->
</head>
<body class="min-h-screen bg-[#EDEBF5] p-8">
    <div class="max-w-7xl mx-auto">
        <h1 class="text-3xl font-bold text-[#3D52A0] mb-8">Admin Dashboard</h1>

        <!-- Tabs for Users and Beggars -->
        <div class="tabs">
            <button class="tab-button" onclick="showTab('users')">Manage Users</button>
            <button class="tab-button" onclick="showTab('beggars')">Verify Beggars</button>
        </div>

        <!-- Users Tab -->
        <div id="users" class="tab-content">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-semibold text-[#3D52A0]">Users</h2>
                <button class="bg-[#3D52A0] text-white hover:bg-[#7091E6]" onclick="showAddUserForm()">Add User</button>
            </div>

            <!-- Table for Users -->
            <table>
                <caption>A list of all users in the system.</caption>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Gender</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through users using JSTL -->
                    
                       <!--  <tr>
                            <td>${username }</td>
                            <td>${useremail }</td>
                            <td>${usermobile }</td>
                            <td>${usergender } </td>
                            <td>
                                <button onclick="editUser(${useremail})">Edit</button>
                                <button onclick="deleteUser(${useremail})">Delete</button>
                            </td>  -->
                        </tr>
                         <tr>
                            <td>Harshil</td>
                            <td>harshil@gmail.com</td>
                            <td>2222222222</td>
                            <td>male</td>
                            <td>
                                <button onclick="editUser(${useremail})">Edit</button>
                                <button onclick="deleteUser(${useremail})">Delete</button>
                            </td>
                        </tr>
                         <tr>
                            <td>Hriday</td>
                            <td>hriday@gmail.com</td>
                            <td>2222222222</td>
                            <td>male</td>
                            <td>
                                <button onclick="editUser(${useremail})">Edit</button>
                                <button onclick="deleteUser(${useremail})">Delete</button>
                            </td>
                        </tr>
                         <tr>
                            <td>Nupur</td>
                            <td>nupur@gmail.com</td>
                            <td>2222222222</td>
                            <td>female</td>
                            <td>
                                <button onclick="editUser(${useremail})">Edit</button>
                                <button onclick="deleteUser(${useremail})">Delete</button>
                            </td>
                        </tr>
                  
                </tbody>
            </table>
        </div>

        <!-- Beggars Tab -->
        <div id="beggars" class="tab-content" style="display: none;">
            <h2 class="text-2xl font-semibold text-[#3D52A0]">Verify Beggars</h2>

            <!-- Table for Beggars -->
            <table>
                <caption>A list of registered beggars pending verification.</caption>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through beggars using JSTL -->
                  
                       <!--  <tr>
                            <td>${beggar.BegName}</td>
                            <td>${beggar.Longitude},${beggar.Latitude}</td>
                            <td>${beggar.status} </td>
                            
                            <td>
                                <button onclick="verifyBeggar(${beggar.BegId}, 'Verified')">Verify</button>
                                <button onclick="rejectBeggar(${beggar.BegId})">Reject</button>
                            </td>
                        </tr> -->
                         <tr>
                            <td>Shyam</td>
                            <td> 75.82466245255539,22.659148597035955 </td>
                            <td>pending</td>
                            <td>
                                <button onclick="verifyBeggar(${beggar.BegId}, 'Verified')">Verify</button>
                                <button onclick="rejectBeggar(${beggar.BegId})">Reject</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Ram</td>
                            <td> 40.7128, -74.0060 </td>
                            <td>pending</td>
                            <td>
                                <button onclick="verifyBeggar(${beggar.BegId}, 'Verified')">Verify</button>
                                <button onclick="rejectBeggar(${beggar.BegId})">Reject</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Shruti</td>
                            <td>34.0522, -118.2437 </td>
                            <td>Approved</td>
                            <td>
                                
                                <button onclick="rejectBeggar(${beggar.BegId})">Reject</button>
                            </td>
                        </tr>
                 
                </tbody>
                
            </table>
        </div>

        <!-- Add User Dialog -->
        <div id="addUserForm" style="display: none;">
            <form action="addUserServlet" method="POST">
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" required><br>
                
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required><br>
                
                <label for="role">Role:</label>
                <select name="role" id="role">
                    <option value="User">User</option>
                    <option value="Admin">Admin</option>
                </select><br>
                
                <button type="submit">Add User</button>
                <button type="button" onclick="hideAddUserForm()">Cancel</button>
            </form>
        </div>

        <!-- Edit User Dialog -->
        <div id="editUserForm" style="display: none;">
            <!-- The form will be dynamically populated via JavaScript -->
        </div>
    </div>

    <script>
        // JavaScript to handle tab switching
        function showTab(tabName) {
            document.getElementById('users').style.display = (tabName === 'users') ? 'block' : 'none';
            document.getElementById('beggars').style.display = (tabName === 'beggars') ? 'block' : 'none';
        }

        // JavaScript to show and hide the Add User form
        function showAddUserForm() {
            document.getElementById('addUserForm').style.display = 'block';
        }

        function hideAddUserForm() {
            document.getElementById('addUserForm').style.display = 'none';
        }

        // JavaScript to edit user (this would involve populating a form)
        function editUser(userId) {
            // Fetch user data and populate form
            // Show the edit form
        }

        // JavaScript to handle deleting user (calling a backend servlet)
        function deleteUser(userId) {
            if (confirm('Are you sure you want to delete this user?')) {
                window.location.href = `deleteUserServlet?id=${userId}`;
            }
        }

        // JavaScript for verifying or rejecting beggars
        function verifyBeggar(beggarId, status) {
            window.location.href = `verifyBeggarServlet?id=${beggarId}&status=${status}`;
        }

        function rejectBeggar(beggarId) {
            verifyBeggar(beggarId, 'Rejected');
        }
    </script>
</body>
</html>
