<%@ page language="java" isELIgnored="false" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <style>
        body {
            background-color: #EDEBF5;
        }
        .container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            padding: 2rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-top: 1.5rem;
            font-size: 2rem;
            font-weight: bold;
            color: #3D52A0;
            text-align: center;
        }
        p {
            margin-top: 0.5rem;
            font-size: 0.875rem;
            text-align: center;
            color: #8697C4;
        }
        input {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #ADBBDA;
            border-radius: 0.375rem;
            color: #3D52A0;
        }
        input:focus {
            outline: none;
            border-color: #7091E6;
            box-shadow: 0 0 0 2px rgba(112, 145, 230, 0.3);
        }
        .form-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        label {
            margin-left: 0.5rem;
            font-size: 0.875rem;
            color: #8697C4;
        }
        .form-footer a {
            font-size: 0.875rem;
            color: #7091E6;
            text-decoration: none;
        }
        .form-footer a:hover {
            color: #3D52A0;
        }
        .btn {
            width: 100%;
            padding: 0.5rem;
            background-color: #3D52A0;
            border: none;
            border-radius: 0.375rem;
            color: white;
            font-size: 0.875rem;
            font-weight: medium;
        }
        .btn:hover {
            background-color: #7091E6;
        }
        .checkbox {
            width: 1rem;
            height: 1rem;
            accent-color: #7091E6;
        }
    </style>
</head>
<body>

<div class="container">
        <div class="form-container">
            <h2>Welcome Back</h2>
            <p>Please sign in to your account</p>
            <form method="POST" action="loginOp">
                <input type="email" id="email-address" name="email" placeholder="Email address" required />
                <input type="password" id="password" name="password" placeholder="Password" required />

                <div class="form-footer">
                    <div>
                        <input type="checkbox" id="remember-me" name="remember-me" class="checkbox" />
                        <label for="remember-me">Remember me</label>
                    </div>
                    <div>
                        <a href="forgetPass">Forgot your password?</a>
                    </div>
                    
                </div>

                <button type="submit" class="btn">Login</button>
               <h3 style="font-style: italic; color:red; ">${message}</h3>
                <div class="form-footer">
                
                
                     <br><br><p>Don't have an account?<a href="register"> Register</a> </p>
                    
                </div>
            </form>
        </div>
    </div>
</body>
</body>
</html>


