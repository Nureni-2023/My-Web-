<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Standard Website</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Inter font from Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            scroll-behavior: smooth; /* Smooth scrolling for anchor links */
        }
        /* Custom styles for demonstration, though Tailwind is preferred */
        .section-padding {
            padding: 4rem 1rem;
        }
        @media (min-width: 768px) {
            .section-padding {
                padding: 6rem 2rem;
            }
        }
        /* Style for the custom message box */
        .message-box {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            display: none; /* Hidden by default */
            text-align: center;
        }
        .message-box.error {
            background-color: #f44336; /* Red for errors */
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">

    <!-- Message Box Element -->
    <div id="messageBox" class="message-box"></div>

    <!-- Header Section -->
    <header class="bg-white shadow-md py-4 sticky top-0 z-50">
        <nav class="container mx-auto flex justify-between items-center px-4 md:px-6">
            <a href="#" class="text-2xl font-bold text-indigo-600 rounded-md p-2">MyWebsite</a>
            <div class="hidden md:flex space-x-6">
                <a href="#home" class="text-gray-700 hover:text-indigo-600 font-medium transition duration-300 rounded-md p-2">Home</a>
                <a href="#about" class="text-gray-700 hover:text-indigo-600 font-medium transition duration-300 rounded-md p-2">About</a>
                <a href="#services" class="text-gray-700 hover:text-indigo-600 font-medium transition duration-300 rounded-md p-2">Services</a>
                <a href="#contact" class="text-gray-700 hover:text-indigo-600 font-medium transition duration-300 rounded-md p-2">Contact</a>
            </div>
            <!-- Mobile Menu Button -->
            <button id="mobileMenuButton" class="md:hidden text-gray-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 rounded-md p-2">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                </svg>
            </button>
        </nav>
        <!-- Mobile Menu -->
        <div id="mobileMenu" class="md:hidden hidden bg-white shadow-lg py-2 mt-2 rounded-b-lg">
            <a href="#home" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 transition duration-300">Home</a>
            <a href="#about" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 transition duration-300">About</a>
            <a href="#services" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 transition duration-300">Services</a>
            <a href="#contact" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 transition duration-300">Contact</a>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="bg-gradient-to-r from-indigo-500 to-purple-600 text-white text-center section-padding flex items-center justify-center min-h-screen-75 rounded-b-xl shadow-lg">
        <div class="max-w-3xl mx-auto px-4">
            <h1 class="text-4xl md:text-6xl font-extrabold leading-tight mb-6 animate-fade-in-down">
                Welcome to Our Awesome Website
            </h1>
            <p class="text-lg md:text-xl mb-8 opacity-90 animate-fade-in-up">
                Discover innovative solutions and exceptional services tailored to your needs.
            </p>
            <a href="#services" class="bg-white text-indigo-600 hover:bg-indigo-100 font-bold py-3 px-8 rounded-full shadow-lg transition duration-300 transform hover:scale-105 inline-block">
                Explore Services
            </a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="bg-white section-padding rounded-xl shadow-md mx-4 md:mx-auto my-8 max-w-6xl">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-8">About Us</h2>
            <div class="grid md:grid-cols-2 gap-8 items-center">
                <div>
                    <img src="https://placehold.co/600x400/E0E7FF/4F46E5?text=Our+Team" alt="Our Team" class="rounded-lg shadow-md w-full h-auto object-cover">
                </div>
                <div class="text-left">
                    <p class="text-lg text-gray-700 leading-relaxed mb-4">
                        We are a passionate team dedicated to delivering high-quality solutions that exceed expectations. With years of experience in the industry, we pride ourselves on innovation, customer satisfaction, and building lasting relationships.
                    </p>
                    <p class="text-lg text-gray-700 leading-relaxed">
                        Our mission is to empower businesses and individuals through cutting-edge technology and unparalleled support. We believe in transparency, integrity, and continuous improvement.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="bg-gray-100 section-padding rounded-xl shadow-md mx-4 md:mx-auto my-8 max-w-6xl">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-12">Our Services</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Service Card 1 -->
                <div class="bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition duration-300 transform hover:scale-105">
                    <div class="text-indigo-600 mb-4">
                        <svg class="w-12 h-12 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9.25 20.25M12 21.75V24M14.25 17L14.75 20.25M20.25 10.75C20.25 15.5 16.25 19.5 11.5 19.5C6.75 19.5 2.75 15.5 2.75 10.75C2.75 6 6.75 2 11.5 2C16.25 2 20.25 6 20.25 10.75Z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-4">Web Development</h3>
                    <p class="text-gray-600">
                        Crafting responsive and high-performance websites tailored to your business needs.
                    </p>
                </div>
                <!-- Service Card 2 -->
                <div class="bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition duration-300 transform hover:scale-105">
                    <div class="text-indigo-600 mb-4">
                        <svg class="w-12 h-12 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-4">Digital Marketing</h3>
                    <p class="text-gray-600">
                        Boosting your online presence and reaching your target audience effectively.
                    </p>
                </div>
                <!-- Service Card 3 -->
                <div class="bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition duration-300 transform hover:scale-105">
                    <div class="text-indigo-600 mb-4">
                        <svg class="w-12 h-12 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-4">UI/UX Design</h3>
                    <p class="text-gray-600">
                        Creating intuitive and visually appealing user interfaces for optimal experience.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="bg-white section-padding rounded-xl shadow-md mx-4 md:mx-auto my-8 max-w-6xl">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-12">Get in Touch</h2>
            <div class="max-w-lg mx-auto">
                <form id="contactForm" class="space-y-6">
                    <div>
                        <label for="name" class="block text-left text-gray-700 text-sm font-medium mb-2">Name</label>
                        <input type="text" id="name" name="name" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 transition duration-200" placeholder="Your Name" required>
                    </div>
                    <div>
                        <label for="email" class="block text-left text-gray-700 text-sm font-medium mb-2">Email</label>
                        <input type="email" id="email" name="email" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 transition duration-200" placeholder="your@example.com" required>
                    </div>
                    <div>
                        <label for="message" class="block text-left text-gray-700 text-sm font-medium mb-2">Message</label>
                        <textarea id="message" name="message" rows="5" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 transition duration-200" placeholder="Your Message" required></textarea>
                    </div>
                    <button type="submit" class="w-full bg-indigo-600 text-white font-bold py-3 px-6 rounded-lg shadow-lg hover:bg-indigo-700 transition duration-300 transform hover:scale-105 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                        Send Message
                    </button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="bg-gray-800 text-white py-8 rounded-t-xl shadow-inner">
        <div class="container mx-auto px-4 text-center">
            <p class="mb-4">&copy; 2025 MyWebsite. All rights reserved.</p>
            <div class="flex justify-center space-x-6">
                <a href="#" class="text-gray-400 hover:text-white transition duration-300">Privacy Policy</a>
                <a href="#" class="text-gray-400 hover:text-white transition duration-300">Terms of Service</a>
            </div>
        </div>
    </footer>

    <script>
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });

                // Close mobile menu if open
                const mobileMenu = document.getElementById('mobileMenu');
                if (!mobileMenu.classList.contains('hidden')) {
                    mobileMenu.classList.add('hidden');
                }
            });
        });

        // Mobile menu toggle
        const mobileMenuButton = document.getElementById('mobileMenuButton');
        const mobileMenu = document.getElementById('mobileMenu');

        mobileMenuButton.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });

        // Form submission handler
        const contactForm = document.getElementById('contactForm');
        const messageBox = document.getElementById('messageBox');

        function showMessageBox(message, type = 'success') {
            messageBox.textContent = message;
            messageBox.className = 'message-box'; // Reset classes
            if (type === 'error') {
                messageBox.classList.add('error');
            }
            messageBox.style.display = 'block';
            setTimeout(() => {
                messageBox.style.display = 'none';
            }, 3000); // Hide after 3 seconds
        }

        contactForm.addEventListener('submit', function(e) {
            e.preventDefault(); // Prevent actual form submission

            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;

            // Basic validation
            if (!name || !email || !message) {
                showMessageBox('Please fill in all fields.', 'error');
                return;
            }

            if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                showMessageBox('Please enter a valid email address.', 'error');
                return;
            }

            // In a real application, you would send this data to a server
            console.log('Form submitted:');
            console.log('Name:', name);
            console.log('Email:', email);
            console.log('Message:', message);

            showMessageBox('Thank you for your message! We will get back to you soon.');

            // Clear the form
            contactForm.reset();
        });
    </script>
</body>
</html>
