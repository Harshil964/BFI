<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>After Login</title>
    
    <script src="https://cdn.jsdelivr.net/npm/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <style>
    
    /* General styles */
body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background-color: #EDEBF5;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}

.min-h-screen {
    min-height: 100vh;
}

/* Navigation styles */
nav {
    background: transparent;
    padding: 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav h1 {
    color: white;
    font-size: 2rem;
    font-weight: bold;
}

nav .flex {
    display: flex;
    gap: 1rem;
    align-items: center;
}

nav button {
    background-color: transparent;
    border: none;
    color: white;
    cursor: pointer;
    font-size: 1rem;
}

nav button:hover {
    text-decoration: underline;
}

/* Dropdown menu styles */
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    min-width: 160px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #f1f1f1;
}

/* Header and Welcome message */
.relative {
    position: relative;
}

.w-full {
    width: 100%;
}

.h-[400px] {
    height: 400px;
}

.bg-black {
    background-color: rgba(0, 0, 0, 0.5);
}

.absolute {
    position: absolute;
}

.inset-0 {
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}

.text-white {
    color: white;
}

.text-center {
    text-align: center;
}

.mt-20 {
    margin-top: 5rem;
}

.text-5xl {
    font-size: 3rem;
}

.font-bold {
    font-weight: bold;
}

.mb-8 {
    margin-bottom: 2rem;
}

/* Button Styles */
button {
    background-color: #3D52A0;
    color: white;
    border: none;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    cursor: pointer;
    border-radius: 0.25rem;
}

button:hover {
    background-color: #7091E6;
}

.bg-[#3D52A0] {
    background-color: #3D52A0;
}

.bg-[#7091E6]:hover {
    background-color: #7091E6;
}

/* Recent Activities */
.grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 1.5rem;
}

.md\:grid-cols-3 {
    grid-template-columns: repeat(3, 1fr);
}

.bg-white {
    background-color: white;
}

.rounded-lg {
    border-radius: 0.5rem;
}

.shadow-md {
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.overflow-hidden {
    overflow: hidden;
}

.p-6 {
    padding: 1.5rem;
}

.text-xl {
    font-size: 1.25rem;
}

.text-[#3D52A0] {
    color: #3D52A0;
}

.text-[#8697C4] {
    color: #8697C4;
}

.mb-2 {
    margin-bottom: 0.5rem;
}

/* Contact Us form */
#contactForm {
    display: none;
}

.hidden {
    display: none;
}

.bg-white {
    background-color: white;
}

.shadow-md {
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

.p-4 {
    padding: 1rem;
}

input, textarea {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid #ccc;
    border-radius: 0.25rem;
    margin-bottom: 1rem;
}

textarea {
    height: 150px;
}

.bg-[#3D52A0] {
    background-color: #3D52A0;
}

.bg-[#3D52A0]:hover {
    background-color: #7091E6;
}

/* How It Works */
.py-12 {
    padding-top: 3rem;
    padding-bottom: 3rem;
}

.flex {
    display: flex;
}

.justify-between {
    justify-content: space-between;
}

.items-center {
    align-items: center;
}

.space-y-8 {
    margin-bottom: 2rem;
}

.md\:space-y-0 {
    margin-bottom: 0;
}

.md\:space-x-4 {
    margin-left: 1rem;
    margin-right: 1rem;
}

.text-lg {
    font-size: 1.125rem;
}

.text-sm {
    font-size: 0.875rem;
}

.font-semibold {
    font-weight: 600;
}

.md\:block {
    display: block;
}

.bg-[#3D52A0] {
    background-color: #3D52A0;
}

.rounded-full {
    border-radius: 50%;
}

.p-4 {
    padding: 1rem;
}

.i {
    color: white;
}
    </style>
</head>
<body>

<%-- Page container --%>
<div class="min-h-screen bg-[#EDEBF5]">
    <%-- Image banner --%>
    <div class="relative">
        <img src="https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=1920&h=400&fit=crop&crop=focalpoint" alt="People in need" class="w-full h-[400px] object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-50">
            <%-- Navigation Bar --%>
            <nav class="bg-transparent p-4">
                <div class="container mx-auto flex justify-between items-center">
                    <h1 class="text-white text-2xl font-bold">Our Organization</h1>
                    <div class="flex space-x-4 items-center">
                        <%-- About Us Dropdown --%>
                        <div class="dropdown">
                            <button class="btn-dropdown">About Us &#x25BC;</button>
                            <div class="dropdown-content">
                                <a href="#">Our Mission</a>
                                <a href="#">Our Team</a>
                                <a href="#">Our History</a>
                            </div>
                        </div>
                        
                        <%-- Where We Work Dropdown --%>
                        <div class="dropdown">
                            <button class="btn-dropdown">Where We Work &#x25BC;</button>
                            <div class="dropdown-content">
                                <a href="#">North America</a>
                                <a href="#">Europe</a>
                                <a href="#">Asia</a>
                                <a href="#">Africa</a>
                            </div>
                        </div>

                        <%-- How You Can Help Dropdown --%>
                        <div class="dropdown">
                            <button class="btn-dropdown">How You Can Help &#x25BC;</button>
                            <div class="dropdown-content">
                                <a href="#">Donate</a>
                                <a href="#">Volunteer</a>
                                <a href="#">Spread the Word</a>
                            </div>
                        </div>

                        <button class="text-white" onclick="toggleContactForm()">Contact Us</button>
                        <button class="text-white">Register New Beggar</button>

                        <%-- User Profile Dropdown --%>
                        <div class="dropdown">
                            <button class="btn-dropdown">
                                <i class="fa fa-user-circle mr-2"></i> John Doe &#x25BC;
                            </button>
                            <div class="dropdown-content">
                                <a href="#">Profile</a>
                                <a href="#">Settings</a>
                                <a href="#">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <%-- Welcome Message --%>
            <div class="container mx-auto mt-20 text-center text-white">
                <h1 class="text-5xl font-bold mb-4">Welcome Back, John!</h1>
                <p class="text-xl mb-8">Ready to make a difference today?</p>
                <button class="bg-[#3D52A0] text-white hover:bg-[#7091E6]">View Your Dashboard</button>
            </div>
        </div>
    </div>

    <%-- Contact Us Form --%>
    <div id="contactForm" class="hidden bg-white p-4 shadow-md">
        <div class="container mx-auto">
            <h2 class="text-2xl font-bold text-[#3D52A0] mb-4">Contact Us</h2>
            <form method="post" action="/contact">
                <div><input type="text" name="name" placeholder="Your Name" class="w-full" /></div>
                <div><input type="email" name="email" placeholder="Your Email" class="w-full" /></div>
                <div><textarea name="message" placeholder="Your Message" class="w-full"></textarea></div>
                <button type="submit" class="bg-[#3D52A0] text-white hover:bg-[#7091E6]">Send Message</button>
            </form>
        </div>
    </div>

    <%-- Recent Activities Section --%>
    <main class="container mx-auto mt-8 p-4">
        <h2 class="text-3xl font-bold text-[#3D52A0] mb-6 text-center">Your Recent Activities</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <%-- Activity 1 --%>
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=400&h=200&fit=crop" alt="Education initiative" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Education Fund</h3>
                    <p class="text-[#8697C4]">You've helped fund education for 50 children this month.</p>
                </div>
            </div>
            <%-- Activity 2 --%>
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1584515933487-779824d29309?w=400&h=200&fit=crop" alt="Healthcare initiative" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Healthcare Volunteer</h3>
                    <p class="text-[#8697C4]">You've volunteered 20 hours at our mobile clinics this month.</p>
                </div>
            </div>
            <%-- Activity 3 --%>
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1567427017947-545c5f8d16ad?w=400&h=200&fit=crop" alt="Water project" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Water Project</h3>
                    <p class="text-[#8697C4]">Your donations have helped install 5 new wells this quarter.</p>
                </div>
            </div>
        </div>
    </main>

    <%-- How It Works Section --%>
    <section class="bg-white py-12 mt-12">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-[#3D52A0] mb-8 text-center">How It Works</h2>
            <div class="flex flex-col md:flex-row justify-between items-center space-y-8 md:space-y-0 md:space-x-4">
                <%-- Step 1 --%>
                <div class="flex flex-col items-center text-center">
                    <div class="bg-[#3D52A0] rounded-full p-4 mb-4"><i class="fa fa-user-plus text-white"></i></div>
                    <h3 class="text-lg font-semibold text-[#3D52A0] mb-2">Add Beggar</h3>
                    <p class="text-sm text-[#8697C4]">Register a new beggar in need</p>
                </div>
                <%-- Step 2 --%>
                <div class="hidden md:block text-[#3D52A0]">→</div>
                <div class="flex flex-col items-center text-center">
                    <div class="bg-[#3D52A0] rounded-full p-4 mb-4"><i class="fa fa-check-circle text-white"></i></div>
                    <h3 class="text-lg font-semibold text-[#3D52A0] mb-2">Verify Details</h3>
                    <p class="text-sm text-[#8697C4]">We verify the provided information</p>
                </div>
                <%-- Step 3 --%>
                <div class="hidden md:block text-[#3D52A0]">→</div>
                <div class="flex flex-col items-center text-center">
                    <div class="bg-[#3D52A0] rounded-full p-4 mb-4"><i class="fa fa-thumbs-up text-white"></i></div>
                    <h3 class="text-lg font-semibold text-[#3D52A0] mb-2">Connect to Programs</h3>
                    <p class="text-sm text-[#8697C4]">We connect them to necessary programs</p>
                </div>
            </div>
        </div>
    </section>
</div>

<script>
    function toggleContactForm() {
        var contactForm = document.getElementById('contactForm');
        if (contactForm.classList.contains('hidden')) {
            contactForm.classList.remove('hidden');
        } else {
            contactForm.classList.add('hidden');
        }
    }
</script>

</body>
</html>
