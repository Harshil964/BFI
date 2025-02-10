<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>After Login Page</title>
    <script src="path/to/your/javascript.js" defer></script> <!-- Link your JavaScript file -->
    <style>
    /* General Styles */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #EDEBF5;
    color: #3D52A0;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
}

/* Header and Navigation */
nav {
    background-color: transparent;
    padding: 1rem;
}

nav h1 {
    font-size: 2rem;
    font-weight: bold;
}

nav .flex {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav .dropdown {
    position: relative;
}

nav .dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
    min-width: 160px;
    z-index: 1;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
}

nav .dropdown:hover .dropdown-content {
    display: block;
}

nav button {
    background: none;
    border: none;
    color: white;
    font-size: 1rem;
    cursor: pointer;
}

/* Hero Section */
.relative {
    position: relative;
}

.relative img {
    width: 100%;
    height: 400px;
    object-fit: cover;
}

.relative .absolute {
    position: absolute;
    inset: 0;
    background: rgba(0, 0, 0, 0.5);
    color: white;
    text-align: center;
}

.relative h1 {
    font-size: 3rem;
}

.relative p {
    font-size: 1.25rem;
}

/* Contact Form */
#contactForm {
    display: none; /* Hidden by default */
    padding: 1rem;
    background-color: white;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
}

#contactForm h2 {
    color: #3D52A0;
}

/* Recent Activities Section */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
}

.grid div {
    background: white;
    border-radius: 0.5rem;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.grid img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-top-left-radius: 0.5rem;
    border-top-right-radius: 0.5rem;
}

/* Upcoming Events Section */
section {
    background-color: #3D52A0;
    color: white;
    padding: 3rem 0;
}

section h2 {
    font-size: 2rem;
    text-align: center;
}

section p {
    margin-bottom: 1rem;
}

/* Footer */
footer {
    background-color: #EDEBF5;
    color: #3D52A0;
    padding: 2rem 0;
}

footer h3 {
    font-size: 1.25rem;
    margin-bottom: 1rem;
}

footer a {
    color: #3D52A0;
    text-decoration: none;
}

footer a:hover {
    color: #7091E6;
}

/* Buttons */
button {
    padding: 0.5rem 1rem;
    border-radius: 0.5rem;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
}

.bg-[#3D52A0] {
    background-color: #3D52A0;
    color: white;
}

.bg-[#3D52A0]:hover {
    background-color: #7091E6;
}

.bg-white {
    background-color: white;
}

.text-[#3D52A0] {
    color: #3D52A0;
}
    
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 160px;
            z-index: 1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .chevron-down {
            margin-left: 4px;
            content: '▼';
        }
    </style>
</head>
<body class="min-h-screen bg-[#EDEBF5]">
    <div class="relative">
        <img src="https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=1920&h=400&fit=crop&crop=focalpoint" alt="People in need" class="w-full h-[400px] object-cover" />
        <div class="absolute inset-0 bg-black bg-opacity-50">
            <nav class="bg-transparent p-4">
                <div class="container mx-auto flex justify-between items-center">
                    <h1 class="text-white text-2xl font-bold">Our Organization</h1>
                    <div class="flex space-x-4 items-center">
                        <div class="dropdown">
                            <button class="text-white">About Us <span class="chevron-down"></span></button>
                            <div class="dropdown-content">
                                <a href="#">Our Mission</a>
                                <a href="#">Our Team</a>
                                <a href="#">Our History</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="text-white">Where We Work <span class="chevron-down"></span></button>
                            <div class="dropdown-content">
                                <a href="#">North America</a>
                                <a href="#">Europe</a>
                                <a href="#">Asia</a>
                                <a href="#">Africa</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="text-white">How You Can Help <span class="chevron-down"></span></button>
                            <div class="dropdown-content">
                                <a href="#">Donate</a>
                                <a href="#">Volunteer</a>
                                <a href="#">Spread the Word</a>
                            </div>
                        </div>
                        <button class="text-white" onclick="toggleContactForm()">Contact Us</button>
                        <button class="text-white">Register New Beggar</button>
                        <div class="dropdown">
                            <button class="text-white">
                                <img src="path/to/user-icon.png" alt="User Icon" class="mr-2 h-4 w-4" />
                                John Doe <span class="chevron-down"></span>
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
            <div class="container mx-auto mt-20 text-center text-white">
                <h1 class="text-5xl font-bold mb-4">Welcome Back, John!</h1>
                <p class="text-xl mb-8">Ready to make a difference today?</p>
                <button class="bg-[#3D52A0] text-white hover:bg-[#7091E6]">View Your Dashboard</button>
            </div>
        </div>
    </div>

    <div id="contactForm" class="bg-white p-4 shadow-md" style="display:none;">
        <div class="container mx-auto">
            <h2 class="text-2xl font-bold text-[#3D52A0] mb-4">Contact Us</h2>
            <form class="space-y-4" action="your-contact-action-url" method="post">
                <div>
                    <input type="text" name="name" placeholder="Your Name" class="w-full" required />
                </div>
                <div>
                    <input type="email" name="email" placeholder="Your Email" class="w-full" required />
                </div>
                <div>
                    <textarea name="message" placeholder="Your Message" class="w-full" required></textarea>
                </div>
                <button type="submit" class="bg-[#3D52A0] text-white hover:bg-[#7091E6]">Send Message</button>
            </form>
        </div>
    </div>

    <main class="container mx-auto mt-8 p-4">
        <h2 class="text-3xl font-bold text-[#3D52A0] mb-6 text-center">Your Recent Activities</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=400&h=200&fit=crop" alt="Education initiative" class="w-full h-48 object-cover" />
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Education Fund</h3>
                    <p class="text-[#8697C4]">You've helped fund education for 50 children this month.</p>
                </div>
            </div>
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1584515933487-779824d29309?w=400&h=200&fit=crop" alt="Healthcare initiative" class="w-full h-48 object-cover" />
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Healthcare Volunteer</h3>
                    <p class="text-[#8697C4]">You've volunteered 20 hours at our mobile clinics this month.</p>
                </div>
            </div>
            <div class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="https://images.unsplash.com/photo-1567427017947-545c5f8d16ad?w=400&h=200&fit=crop" alt="Clean water initiative" class="w-full h-48 object-cover" />
                <div class="p-6">
                    <h3 class="text-xl font-bold text-[#3D52A0] mb-2">Water Project</h3>
                    <p class="text-[#8697C4]">Your donations have helped install 5 new wells this quarter.</p>
                </div>
            </div>
        </div>
    </main>

    <section class="bg-[#3D52A0] text-white py-12 mt-12">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold mb-6 text-center">Upcoming Events</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div>
                    <p class="text-lg mb-4">Join us for our upcoming charity events and make an even bigger impact. Your participation can change lives!</p>
                    <button class="bg-white text-[#3D52A0] hover:bg-[#EDEBF5]">View All Events</button>
                </div>
                <div class="relative h-64 md:h-auto">
                    <img src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?w=500&h=300&fit=crop" alt="Volunteers at an event" class="rounded-lg shadow-lg object-cover w-full h-full" />
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-[#EDEBF5] text-[#3D52A0] py-8 mt-12">
        <div class="container mx-auto px-4">
            <div class="flex flex-wrap justify-between">
                <div class="w-full md:w-1/3 mb-6 md:mb-0">
                    <h3 class="text-xl font-bold mb-4">Our Organization</h3>
                    <p>Dedicated to making a positive impact in communities worldwide.</p>
                </div>
                <div class="w-full md:w-1/3 mb-6 md:mb-0">
                    <h3 class="text-xl font-bold mb-4">Contact Us</h3>
                    <p>123 Charity Lane, Helpville, HV 12345</p>
                    <p>Email: info@ourorganization.org</p>
                    <p>Phone: (123) 456-7890</p>
                </div>
                <div class="w-full md:w-1/3">
                    <h3 class="text-xl font-bold mb-4">Follow Us</h3>
                    <a href="#" class="text-[#3D52A0]">Facebook</a><br>
                    <a href="#" class="text-[#3D52A0]">Twitter</a><br>
                    <a href="#" class="text-[#3D52A0]">Instagram</a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        function toggleContactForm() {
            const form = document.getElementById('contactForm');
            form.style.display = form.style.display === 'none' || form.style.display === '' ? 'block' : 'none';
        }
        function toggleContactForm() {
            const form = document.getElementById('contactForm');
            if (form.style.display === 'none' || form.style.display === '') {
                form.style.display = 'block'; // Show the form
            } else {
                form.style.display = 'none'; // Hide the form
            }
        }
    </script>
    
</body>
</html>
