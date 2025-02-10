<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    
    <!-- Inline CSS -->
    <style>
        body {
            background-color: #EDEBF5;
        }

        .min-h-screen {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .max-w-md {
            width: 100%;
            max-width: 400px;
        }

        .bg-white {
            background-color: white;
        }

        .p-8 {
            padding: 2rem;
        }

        .rounded-lg {
            border-radius: 10px;
        }

        .shadow-lg {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-top: 1.5rem;
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            color: #3D52A0;
        }

        p {
            margin-top: 0.5rem;
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

        label {
            font-size: 0.875rem;
            color: #3D52A0;
        }

        .text-sm {
            font-size: 0.875rem;
        }

        .flex {
            display: flex;
        }

        .space-x-4 {
            margin-right: 1rem;
        }
    </style>
</head>
<body>

 <div class="min-h-screen flex items-center justify-center bg-[#EDEBF5] py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-md w-full space-y-8 bg-white p-8 rounded-lg shadow-lg">
            <div>
                <h2 class="mt-6 text-center text-3xl font-extrabold text-[#3D52A0]">
                    Create your account
                </h2>
                <p class="mt-2 text-center text-sm text-[#8697C4]">
                    Join us and start your journey
                </p>
            </div>
            <form class="mt-8 space-y-6" action="registerOp" method="POST" >
                <div class="rounded-md shadow-sm space-y-4">
                    <div>
                        <label for="name" class="block text-sm font-medium text-[#3D52A0]">
                            Full Name
                        </label>
                        <input 
                            id="name" 
                            name="name" 
                            type="text" 
                            required 
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-[#ADBBDA] placeholder-[#8697C4] text-[#3D52A0] focus:outline-none focus:ring-[#7091E6] focus:border-[#7091E6] focus:z-10 sm:text-sm" 
                            placeholder="John Doe">
                    </div>
                    <div>
                        <label for="email" class="block text-sm font-medium text-[#3D52A0]">
                            Email address
                        </label>
                        <input 
                            id="email" 
                            name="email" 
                            type="email" 
                            required 
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-[#ADBBDA] placeholder-[#8697C4] text-[#3D52A0] focus:outline-none focus:ring-[#7091E6] focus:border-[#7091E6] focus:z-10 sm:text-sm" 
                            placeholder="you@example.com">
                    </div>
                    <div>
                        <label for="password" class="block text-sm font-medium text-[#3D52A0]">
                            Password
                        </label>
                        <input 
                            id="password" 
                            name="password" 
                            type="password" 
                            required 
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-[#ADBBDA] placeholder-[#8697C4] text-[#3D52A0] focus:outline-none focus:ring-[#7091E6] focus:border-[#7091E6] focus:z-10 sm:text-sm" 
                            placeholder="••••••••">
                    </div>
                    <div>
                        <label for="mobile" class="block text-sm font-medium text-[#3D52A0]">
                            Mobile Number
                        </label>
                        <input 
                            id="mobile" 
                            name="mobile" 
                            type="tel" 
                            required 
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-[#ADBBDA] placeholder-[#8697C4] text-[#3D52A0] focus:outline-none focus:ring-[#7091E6] focus:border-[#7091E6] focus:z-10 sm:text-sm" 
                            placeholder="+91">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-[#3D52A0] mb-2">Gender</label>
                        <div class="flex space-x-4">
                            <div class="flex items-center space-x-2">
                                <input type="radio" id="male" name="gender" value="male" checked>
                                <label for="male">Male</label>
                            </div>
                            <div class="flex items-center space-x-2">
                                <input type="radio" id="female" name="gender" value="female">
                                <label for="female">Female</label>
                            </div>
                            <div class="flex items-center space-x-2">
                                <input type="radio" id="other" name="gender" value="other">
                                <label for="other">Other</label>
                            </div>
                        </div>
                    </div>
                    
                </div>

                <div>
                    <button 
                        type="submit" 
                        class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-[#3D52A0] hover:bg-[#7091E6] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#7091E6]">
                        Register
                    </button>
                </div>
            </form>
            <div class="text-center">
                <p class="text-sm text-[#8697C4]">
                    Already have an account? 
                    <a href="login" class="font-medium text-[#7091E6] hover:text-[#3D52A0]">
                        Login
                    </a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>



