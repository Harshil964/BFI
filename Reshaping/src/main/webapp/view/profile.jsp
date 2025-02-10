<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Profile</title>
    <style>
    /* General styles */
body {
    font-family: 'Arial', sans-serif;
    background-color: #EDEBF5;
    color: #3D52A0;
    margin: 0;
    padding: 0;
}

.min-h-screen {
    min-height: 100vh;
    padding: 2rem;
    background-color: #EDEBF5;
}

.max-w-2xl {
    max-width: 42rem;
    margin: 0 auto;
}

/* Card styles */
.card {
    background-color: white;
    border-radius: 0.5rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    padding: 2rem;
    margin-top: 2rem;
}

.card-header {
    margin-bottom: 1rem;
}

.card-header h2 {
    font-size: 2rem;
    font-weight: bold;
    margin: 0;
    color: #3D52A0;
}

.card-header p {
    color: #8697C4;
    margin-top: 0.25rem;
}

.card-content {
    margin-bottom: 1rem;
}

.card-footer {
    display: flex;
    justify-content: space-between;
    margin-top: 1.5rem;
}

/* Form and Input styles */
label {
    display: block;
    margin-bottom: 0.5rem;
    font-weight: bold;
}

.input, .textarea {
    width: 100%;
    padding: 0.75rem;
    border-radius: 0.5rem;
    border: 1px solid #d4d4d4;
    background-color: #fff;
    color: #3D52A0;
    font-size: 1rem;
}

.input:disabled, .textarea:disabled {
    background-color: #f5f5f5;
    cursor: not-allowed;
}

.textarea {
    height: 100px;
    resize: none;
}

.mt-1 {
    margin-top: 0.25rem;
}

.space-y-4 > * + * {
    margin-top: 1rem;
}

/* Button styles */
button {
    padding: 0.75rem 1.5rem;
    border: none;
    border-radius: 0.5rem;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-primary {
    background-color: #3D52A0;
    color: white;
}

.btn-primary:hover {
    background-color: #7091E6;
}

.btn-outline {
    background-color: transparent;
    color: #3D52A0;
    border: 2px solid #3D52A0;
}

.btn-outline:hover {
    background-color: #3D52A0;
    color: white;
}

.btn-danger {
    background-color: #e3342f;
    color: white;
}

.btn-danger:hover {
    background-color: #c72522;
}

/* Modal styles */
.modal-header {
    background-color: #3D52A0;
    color: white;
}

.modal-header h5 {
    font-size: 1.25rem;
}

.modal-body {
    padding: 1.5rem;
}

.modal-footer {
    display: flex;
    justify-content: flex-end;
    gap: 1rem;
}

.btn-close {
    background-color: transparent;
    border: none;
    font-size: 1.25rem;
    color: white;
    cursor: pointer;
}

/* Profile photo styles */
.flex {
    display: flex;
    align-items: center;
}

.space-x-4 > * + * {
    margin-left: 1rem;
}

.w-24 {
    width: 6rem;
}

.h-24 {
    height: 6rem;
}

.bg-[#7091E6] {
    background-color: #7091E6;
}

.rounded-full {
    border-radius: 50%;
}

/* Icons */
.icon-user:before {
    content: '\f007'; /* Font Awesome or icon library */
    margin-right: 0.5rem;
}

.icon-mail:before {
    content: '\f0e0'; /* Font Awesome or icon library */
    margin-right: 0.5rem;
}

.icon-phone:before {
    content: '\f095'; /* Font Awesome or icon library */
    margin-right: 0.5rem;
}

.icon-map-pin:before {
    content: '\f041'; /* Font Awesome or icon library */
    margin-right: 0.5rem;
}
    
    </style>
</head>
<body>
    <div class="min-h-screen bg-[#EDEBF5] p-8">
        <div class="max-w-2xl mx-auto">
            <div class="card">
                <div class="card-header">
                    <h2 class="text-2xl font-bold text-[#3D52A0]">User Profile</h2>
                    <p>View and manage your account details</p>
                </div>
                <div class="card-content">
                    <form action="updateProfile" method="post">
                        <div class="space-y-4">
                            
                            <div>
                                <label for="name" class="text-[#3D52A0]">
                                   
                                    Full Name
                                </label>
                                <input type="text" id="name" name="name" value="${name}" class="input mt-1" disabled="${!isEditing}" />
                            </div>
                          
                            <div>
                                <label for="password" class="text-[#3D52A0]">
                                   
                                    Password
                                </label>
                                <input type="text" id="password" name="password" value="${password}" class="input mt-1" disabled="${!isEditing}" />
                            </div>
                            <div>
                                <label for="mobile" class="text-[#3D52A0]">
                                   
                                   mobile no.
                                </label>
                                <input type="text" id="mobile" name="mobile" value="${mobile}" class="input mt-1" disabled="${!isEditing}" />
                            </div>
                            <div>
                                <label for="gender" class="text-[#3D52A0]">
                                   
                                    Gender
                                </label>
                                <input type="text" id="gender" name="gender" value="${gender}" class="input mt-1" disabled="${!isEditing}" />
                            </div>
                           
                        </div>
                        <div class="card-footer">
                            <c:choose>
                                <c:when test="${isEditing}">
                                    <button type="submit" class="btn-primary">Save Changes</button>
                                    <button type="button" class="btn-outline" onclick="cancelEdit()">Cancel</button>
                                </c:when>
                                <c:otherwise>
                                    <button type="button" class="btn-primary" onclick="enableEdit()">Edit Profile</button>
                                    <button type="button" class="btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">Delete Account</button>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Deleting Account -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Are you sure?</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    This action cannot be undone. This will permanently delete your account and remove your data from our servers.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-outline" data-bs-dismiss="modal">Cancel</button>
                    <form action="deleteProfile" method="post">
                        <button type="submit" class="btn-danger">Yes, delete my account</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        let isEditing = false;

        function enableEdit() {
            isEditing = true;
            document.querySelectorAll('input, textarea').forEach(element => element.disabled = false);
        }

        function cancelEdit() {
            isEditing = false;
            document.querySelectorAll('input, textarea').forEach(element => element.disabled = true);
        }
    </script>
</body>
</html>
