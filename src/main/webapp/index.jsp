<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medium Clone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fafafa;
        }
        .navbar {
            background-color: #000;
        }
        .navbar-brand, .nav-link {
            color: #fff !important;
        }
        .article-card {
            border-bottom: 1px solid #ddd;
            padding: 20px 0;
        }
        .article-title {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .article-subtitle {
            color: #555;
        }
        footer {
            background: #000;
            color: #fff;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">Medium Clone</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Trending</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Articles -->
<div class="container mt-4">
    <div class="article-card">
        <h2 class="article-title">How to Start Writing on Medium</h2>
        <p class="article-subtitle">A beginner’s guide to publishing your first story.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
           Praesent vel orci vel felis pretium faucibus.</p>
        <a href="#" class="btn btn-outline-dark btn-sm">Read More</a>
    </div>

    <div class="article-card">
        <h2 class="article-title">The Future of Web Development</h2>
        <p class="article-subtitle">Exploring trends in 2025.</p>
        <p>Aliquam erat volutpat. Cras auctor, magna sed volutpat feugiat, 
           ligula erat ultricies sapien.</p>
        <a href="#" class="btn btn-outline-dark btn-sm">Read More</a>
    </div>

    <div class="article-card">
        <h2 class="article-title">10 Tips for Better Writing</h2>
        <p class="article-subtitle">Improve clarity and impact of your words.</p>
        <p>Morbi varius, urna non laoreet viverra, lectus libero efficitur sem, 
           vel scelerisque lectus est ut elit.</p>
        <a href="#" class="btn btn-outline-dark btn-sm">Read More</a>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2025 Medium Clone. All rights reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

