<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>After Login Page</title>
    <style>
        /* Color Scheme and Basic Styles */
        body {
            background-color: #EDEBF5;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            
        }

        nav {
           /* padding: 1rem;
            background-color: transparent;
            color: white;
            width:100%
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
           */
            background-color: transparent;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav h1 {
        
            font-size: 24px;
            font-weight: bold;
        }

        nav .nav-links {
            display: flex;
            gap: 20px;
            justify-content: flex-end;
            align-items: center;
        }

        nav a, .button {
            color: white;
            text-decoration: none;
            background-color: #3D52A0;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover, .button:hover {
            background-color:#3D52A0;
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
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px;
        }

        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: White;
            color: #7091E6;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            
        }

        .dropdown:hover .dropbtn {
            background-color: #7091E6;
        }
        
        .hero {
            position: relative;
            height: 400px;
            background: url('https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=1920&h=400&fit=crop&crop=focalpoint') no-repeat center center/cover;
        }

        .hero .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            color: white;
            margin: 0;
        }

        .hero p {
            font-size: 18px;
            color: white;
            margin-top: 10px;
        }

        .hero .button {
            margin-top: 20px;
            background-color: #3D52A0;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
        }

        .hero .button:hover {
            background-color: #7091E6;
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
 /* Impact Section */
        .impact {
            margin: 2rem 0;
            text-align: center;
            padding-left:10%;
        }

        .impact h2 {
            padding-right:10%;
            font-size: 2rem;
            color: #3D52A0;
            margin-bottom: 2rem;
        }

        .impact-cards {
            display: grid;
            grid-template-columns: 1fr;
            gap: 2rem;
            padding: 0 10% 0 0;
             
            
        }

        @media(min-width: 768px) {
            .impact-cards {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        .impact-card {
            background-color: white;
            border-radius: 0.5rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
           
           
        }

        .impact-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .impact-card .card-body {
            padding: 1rem;
        }

        .impact-card h3 {
            font-size: 1.5rem;
            color: #3D52A0;
            margin-bottom: 0.5rem;
        }

        .impact-card p {
            color: #8697C4;
        }

/* Recent Activities Section 
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
*/
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
    
       

    </style>
</head>
<body>

    <!-- Navbar -->
    <nav   style="background-color: #3D52A0; ">
        <h1 style="color: white;">Reshaping Indore</h1>
        <div class="nav-links">  
            <div class="dropdown">
                <button class="dropbtn button">About Us</button>
                <div class="dropdown-content">
                    <a href="#">Our Mission</a>
                    <a href="#">Our Team</a>
                    <a href="#">Our History</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn button">Where We Work</button>
                <div class="dropdown-content">
                    <a href="#">North Indore</a>
                    <a href="#">South Indore</a>
                    <a href="#">East Indore</a>
                    <a href="#">West Indore</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn button">How You Can Help</button>
                <div class="dropdown-content">
                    <a href="#">Donate</a>
                    <a href="#">Volunteer</a>
                    <a href="#">Spread the Word</a>
                </div>
            </div>

            <a href="#" class="button">Contact Us</a>
            <a href="registerBeggar" class="button">Register New Beggar</a>

            <div class="dropdown">
                <button class="dropbtn button">
                    <span>${name}</span>
                </button>
                <div class="dropdown-content">
                    <a href="profile">Profile</a>
                    <a href="#">Settings</a>
                    <a href="#">Logout</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="hero">
        <div class="overlay">
            <h1>Welcome Back, ${name}!</h1>
            <p>Ready to make a difference today?</p>
            <a href="dashboard" class="button">View Your Dashboard</a>
        </div>
    </div>
   <!--  contact Section -->
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
    <!-- Our Impact Section -->
    <main class="container impact">
        <h2>Our Impact</h2>
        <div class="impact-cards">
            <div class="impact-card">
                <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=400&h=200&fit=crop" alt="Education">
                <div class="card-body">
                    <h3>Education</h3>
                    <p>We've built 100 schools, providing education to over 50,000 children.</p>
                </div>
            </div>
            <div class="impact-card">
                <img src="https://images.unsplash.com/photo-1584515933487-779824d29309?w=400&h=200&fit=crop" alt="Healthcare">
                <div class="card-body">
                    <h3>Healthcare</h3>
                    <p>Our mobile clinics have provided medical care to over 1 million people.</p>
                </div>
            </div>
           <div class="impact-card">
                <img src="https://imgs.search.brave.com/PM3oFNhLSAf8Ewy7L169zfDjyQ_Hd7wvf-NnYk2xS5M/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTU3/NjQ0MzI1L3Bob3Rv/L3dhdGVyLWRyb3Au/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PU84a2hyN293ZFJB/bnRSUksyUjQyYTRU/REd4QnNiM0oxX2pO/YlNHeUJtVzg9" alt="Clean Water">
                <div class="card-body">
                     <h3>Clean Water</h3>
                     <p>We've installed 200 water wells, bringing clean water to 30,000 families.</p>
                </div>
           </div>
           
        </div>
    </main>

    <section class="bg-[#3D52A0] text-white py-12 mt-12"  >
        <div class="container mx-auto px-4"  >
            <h2 class="text-3xl font-bold mb-6 text-center" style="text-align:center">Upcoming Events</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center" >
                <div>
                    <p class="text-lg mb-4" style="text-align:center">Join us for our upcoming charity events and make an even bigger impact. Your participation can change lives!</p>
                   
                </div>
                <div class="relative h-64 md:h-auto" style="padding-left: 35%">
                    <img src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?w=500&h=300&fit=crop" alt="Volunteers at an event" class="rounded-lg shadow-lg object-cover w-full h-full" />
                    <br> <button class="bg-white text-[#3D52A0] hover:bg-[#EDEBF5]" >View All Events</button>
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-[#EDEBF5] text-[#3D52A0] py-8 mt-12" style=" padding-left:7%">
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
