<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Organization</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #EDEBF5;
        }

        /* Container */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Navbar Styles */
        nav {
            background-color: transparent;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            
        }
        nav h1 {
            color: white;
            font-size: 24px;
            font-weight: bold;
        }

        nav .nav-links {
            display: flex;
            align-items: center;
            gap: 20px;
            
        }

        nav .dropdown {
            position: relative;
            display: inline-block;
        }

        nav .dropdown-content {
            /*display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: white;
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 100;*/
            display: none;
            position: absolute;
            background-color: white;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px;
        }

        nav .dropdown:hover .dropdown-content {
            display: block;
        }

        nav .dropdown-content a {
            display: block;
            padding: 12px 16px;
            color: white;
            text-decoration: none;
        }

        nav .dropdown-content a:hover {
            background-color: White;
            color: #7091E6;
        }
         nav .dropdown:hover .dropbtn {
            background-color: #7091E6;
        }
        nav button {
            background: none;
            border: none;
            color: white;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            position: relative;
            height: 400px;
            background-image: url('https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=1920&h=400&fit=crop&crop=focalpoint');
            background-size: cover;
            background-position: center;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            color: white;
            text-align: center;
            top: 50%;
            transform: translateY(-50%);
        }

        .hero-content h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .hero-content p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
        }

        .hero-content button {
            background-color: #3D52A0;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .hero-content button:hover {
            background-color: #7091E6;
        }

        /* Contact Form */
        #contactForm {
            display: none;
            background-color: white;
            padding: 2rem;
            margin-top: 2rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form h2 {
            color: #3D52A0;
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
        }

        .contact-form button {
            background-color: #3D52A0;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #7091E6;
        }

        /* Impact Section */
        .impact {
            margin: 2rem 0;
            text-align: center;
            padding-left:20%;
        }

        .impact h2 {
            font-size: 2rem;
            color: #3D52A0;
            margin-bottom: 2rem;
        }

        .impact-cards {
            display: grid;
            grid-template-columns: 1fr;
            gap: 2rem;
             
            
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

        /* Footer */
        footer {
            background-color: #3D52A0;
            color: white;
            padding: 2rem 0;
            text-align: center;
        }

        footer a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Additional Styles */
        .hidden {
            display: none;
        
    </style>
    
</head>
<body>
            <!-- Navbar -->
            <nav style="background-color: #3D52A0;">
                  <h1 style="color: white;">Reshaping Indore</h1>
     <div class="nav-links">
        <div class="dropdown">
            <button class="dropbtn button" >About Us </button>
            <div class="dropdown-content">
                <a href="#">Our Mission</a>
                <a href="#">Our Team</a>
                <a href="#">Our History</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn button" >Where We Work </button>
            <div class="dropdown-content">
                <a href="#">North Indore</a>
                    <a href="#">South Indore</a>
                    <a href="#">East Indore</a>
                    <a href="#">West Indore</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn button">How You Can Help </button>
            <div class="dropdown-content">
                <a href="#">Donate</a>
                <a href="#">Volunteer</a>
                <a href="#">Spread the Word</a>
            </div>
        </div>
        <button onclick="toggleContactForm()" style="color: white;">Contact Us</button>
        <a style="color: white; margin-right:20px; text-decoration: none;" href="login" >Login</a>
        
    </div>
</nav>
            

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Help Us Make a Difference</h1>
            <p>Together, we can change lives and build a better future.</p>
            <button>Donate Now</button>
        </div>
    </section>

    
    <!-- Contact Form -->
    <div id="contactForm" class="container contact-form">
        <h2>Contact Us</h2>
        <form>
            <input type="text" placeholder="Your Name">
            <input type="email" placeholder="Your Email">
            <textarea placeholder="Your Message"></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>

    <!-- Our Impact Section -->
    <section class="container impact">
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
    </section>

    <!-- Footer -->
    <footer >
        <a href="#">Facebook</a>
        <a href="#">Twitter</a>
        <a href="#">Instagram</a>
    </footer>

    <script>
        function toggleContactForm() {
            const contactForm = document.getElementById('contactForm');
            if (contactForm.classList.contains('hidden')) {
                contactForm.classList.remove('hidden');
            } else {
                contactForm.classList.add('hidden');
            }
        }
    </script>
</body>
</html>
