<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Beggar Dashboard</title>
    <style>
        /* beggar-dashboard.css */
body {
    font-family: Arial, sans-serif;
    background-color: #EDEBF5;
    margin: 0;
    padding: 0;
}

.dashboard {
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
    background-color: #EDEBF5;
}

/* Card component styling */
.card {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}

.card-header {
    font-size: 24px;
    font-weight: bold;
    color: #3D52A0;
}

.card-content {
    padding: 15px 0;
}

.card-footer {
    margin-top: 20px;
}

.user-info {
    display: flex;
    align-items: center;
    gap: 20px;
}

.user-info p {
    margin: 0;
}

.user-info strong {
    font-weight: bold;
}

/* Badge styles */
.badge {
    display: inline-block;
    padding: 5px 10px;
    border-radius: 12px;
    font-size: 12px;
    text-transform: uppercase;
}

.badge-approved {
    background-color: #28a745;
    color: white;
}

.badge-pending {
    background-color: #ffc107;
    color: white;
}

.badge-rejected {
    background-color: #dc3545;
    color: white;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table th, table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

table th {
    background-color: #f5f5f5;
}

table tr {
    cursor: pointer;
}

table tr:hover {
    background-color: #F0F4FF;
}

.icon-map-pin {
    margin-right: 5px;
    vertical-align: middle;
}

/* Button styling */
.btn {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: #3D52A0;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    justify-content: center;
    align-items: center;
}

.btn:disabled {
    background-color: #cccccc;
}

.btn:hover:not(:disabled) {
    background-color: #7091E6;
}

.btn i {
    margin-right: 8px;
}

.grid {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 20px;
}

@media (max-width: 768px) {
    .grid {
        grid-template-columns: 1fr;
    }
}
        
    </style>
</head>
<body>

<div class="dashboard">
    <!-- User Card -->
    <div class="card">
        <div class="card-header">User Dashboard</div>
        <div class="card-content">
            <div class="user-info">
              
             
                <p>Email:${email}</p>
                <p>Registered Beggars: ${beggarCount}</p>
               
            </div>
        </div>
    </div>

    <div class="grid" style="display: grid; grid-template-columns: 2fr 1fr; gap: 20px; margin-top: 20px;">
        <!-- Registered Beggars Table -->
        <div class="card">
            <div class="card-header">Registered Beggars</div>
            <div class="card-content">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Reward Status</th>
                        </tr>
                    </thead>
                    <tbody>
                             
                            <tr onclick="showBeggarDetails('${begid}')">
                                <td>${begid}</td>
                                <td>${begname}</td>
                                <td><i class="icon-map-pin"></i> ${beglat}, ${beglog}</td>
                                <td>${status } </td>
                            </tr>
                             <tr onclick="showBeggarDetails('${begid}')">
                                <td>24</td>
                                <td>Ram</td>
                                <td><i class="icon-map-pin"></i> 40.7128, -74.0060</td>
                                <td>Pending  </td>
                            </tr>
                           <tr onclick="showBeggarDetails('${begid}')">
                                <td>25</td>
                                <td>Shruti</td>
                                <td><i class="icon-map-pin"></i> 34.0522, -118.2437</td>
                                <td>Approved  </td>
                            </tr>
                       
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Beggar Details Card -->
        <div class="card">
            <div class="card-header">Beggar Details</div>
            <div class="card-content" id="beggarDetails">
                <!-- Initially empty, details will be populated by JavaScript -->
                <p>Select a beggar to view details</p>
            </div>
            <div class="card-footer">
                <button id="claimRewardBtn" class="btn" disabled>Claim Reward</button>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script>
    let beggarData = ${beggars};

    function showBeggarDetails(${begid}) {
        let selectedBeggar = beggarData.find(beggar => beggar.id === beggarId);
        let detailsDiv = document.getElementById('beggarDetails');
        let claimButton = document.getElementById('claimRewardBtn');

        detailsDiv.innerHTML = `
            <div>
                <p><strong>Beggar ID:</strong> ${selectedBeggar.id}</p>
                <p><strong>Name:</strong> ${selectedBeggar.name}</p>
                <p><strong>Location:</strong> <i class="icon-map-pin"></i> ${selectedBeggar.latitude}, ${selectedBeggar.longitude}</p>
                <p><strong>Reward Status:</strong> <span class="badge ${selectedBeggar.rewardStatus == 'Approved' ? 'badge-approved' : selectedBeggar.rewardStatus == 'Rejected' ? 'badge-rejected' : 'badge-pending'}">
                    ${selectedBeggar.rewardStatus}
                </span></p>
            </div>
        `;

        // Enable or disable "Claim Reward" button based on status
        if (selectedBeggar.rewardStatus === 'Approved') {
            claimButton.disabled = false;
        } else {
            claimButton.disabled = true;
        }
    }
    
</script>

</body>
</html>
