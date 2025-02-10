<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    
    <!-- Inline CSS -->
    <style>
        body {
            background-color: #EDEBF5;
            font-family: Arial, sans-serif;
        }

        .min-h-screen {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 12px;
        }

        .max-w-md {
            width: 100%;
            max-width: 400px;
            background-color: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            color: #3D52A0;
        }

        p {
            text-align: center;
            font-size: 0.875rem;
            color: #8697C4;
        }

        input {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ADBBDA;
            border-radius: 0.375rem;
            color: #3D52A0;
        }

        input:focus {
            outline: none;
            border-color: #7091E6;
            box-shadow: 0 0 0 2px rgba(112, 145, 230, 0.3);
        }

        button {
            background-color: #3D52A0;
            color: white;
            padding: 0.5rem;
            width: 100%;
            border: none;
            border-radius: 0.375rem;
        }

        button:hover {
            background-color: #7091E6;
        }

        .alert {
            display: flex;
            align-items: center;
            background-color: #f0f4fc;
            padding: 1rem;
            border-radius: 0.375rem;
            color: #3D52A0;
            font-size: 0.875rem;
        }

        .alert-title {
            font-weight: bold;
            margin-right: 0.5rem;
        }

        .text-center {
            text-align: center;
        }

        .link {
            color: #7091E6;
            text-decoration: none;
        }

        .link:hover {
            color: #3D52A0;
        }

        .flex {
            display: flex;
            align-items: center;
        }

        .mr-2 {
            margin-right: 0.5rem;
        }

        .icon {
            height: 1rem;
            width: 1rem;
        }
    </style>
</head>
<body>
<div class="min-h-screen">
        <div class="max-w-md space-y-8">
            <div>
                <h2>Forgot your password?</h2>
                <p>No worries, we'll send you reset instructions.</p>
            </div>

            <!-- Form or Alert -->
            <%
                String isSubmitted = request.getParameter("isSubmitted");
                String email = request.getParameter("email");

                if (isSubmitted == null || !"true".equals(isSubmitted)) {
            %>
            <!-- Form Section -->
            <form action="forgetOp" method="POST">
                <div class="space-y-4">
                    <div>
                        <label for="email-address" class="sr-only">Email address</label>
                         <input 
                            id="email-address" 
                            name="email" 
                            type="email" 
                            required 
                            placeholder="Enter your email address"
                            value="<%= email != null ? email : "" %>">
                    </div><br>

                    <div>
                        <button type="submit" name="isSubmitted" value="true">
                            Reset password
                        </button>
                    </div>
                </div>
            </form>
            <% } else { %>
            <!-- Alert Section after form submission -->
            <div class="alert">
                <div class="alert-title">Check your email</div>
                <div>We have sent a password reset link to <%= email %>. Please check your inbox and follow the instructions to reset your password.</div>
            </div>
            <% } %>

            <!-- Back to login link -->
            <br><div class="text-center mt-4">
                <a href="login" class="link flex items-center justify-center">
                    <span class="mr-2">&#8592;</span> <!-- Left arrow -->
                    Back to login
                </a>
            </div>
        </div>
    </div>
</body>
</html>


