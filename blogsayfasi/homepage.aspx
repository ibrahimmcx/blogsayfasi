<!doctype html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="İbrahim Culfa">
    <title>İbrahim Culfa - Kişisel Sayfa</title>

    <style>
        body {
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100%;
            background-color: #f4f4f4;
            overflow-x: hidden;
        }

        .sidebar {
            background-color: #f8c806;
            color: black;
            width: 250px;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            overflow-y: auto;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            transition: width 0.3s ease;
            z-index: 10;
        }

        .admin-bar {
            background-color: #d44f00;
            color: white;
            padding: 10px;
            font-size: 1.2em;
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .sidebar h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #ff6347;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin-bottom: 20px;
        }

        .sidebar ul li a {
            color: black;
            text-decoration: none;
            font-size: 18px;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar ul li a:hover {
            background-color: #ff6347;
            color: white;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            width: calc(100% - 250px);
            overflow: hidden;
            transition: margin-left 0.3s ease;
        }

        .header-bar {
            background-color: white;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
            z-index: 100;
        }

        .header-bar h1 {
            font-size: 2.5em;
            margin: 0;
        }

        .header-bar p {
            font-size: 1.2em;
            color: #888;
        }

        .site-section-hero {
            background-image: url('images/hero-min.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 120px 20px;
            position: relative;
            z-index: 10;
        }

        .site-section-hero h1 {
            font-size: 3em;
            font-weight: 700;
        }

        .site-section {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
            padding: 20px;
            margin-top: 40px;
        }

        .photo-item {
            width: 300px;
            height: 200px;
            overflow: hidden;
            border-radius: 10px;
            position: relative;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .photo-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .photo-item:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .photo-item:hover img {
            transform: scale(1.1);
        }

        .photo-text-more {
            position: absolute;
            top: 10px;
            right: 10px;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            padding: 5px;
            border-radius: 5px;
        }

        .photo-viewer {
            display: none;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.8);
            z-index: 1000;
        }

        .photo-viewer img {
            max-width: 90%;
            max-height: 80%;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.8);
        }

        .close-viewer {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 2em;
            color: white;
            background: rgba(0, 0, 0, 0.7);
            border: none;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
        }

        .about-section {
            background-color: #fff;
            padding: 50px 20px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 30px;
        }

        .about-section h2 {
            font-size: 2em;
            color: #333;
        }

        .about-section p {
            font-size: 1.2em;
            line-height: 1.6;
            color: #555;
        }

        .about-section ul {
            list-style: none;
            padding: 0;
        }

        .about-section ul li {
            margin-bottom: 10px;
        }

        .about-section ul li:before {
            content: '✔️';
            margin-right: 10px;
            color: #ff6347;
        }

        .footer {
            text-align: center;
            background-color: ;
            color: white;
            padding: 15px;
            margin-top: auto;
        }

        .footer p {
            font-size: 1em;
        }

        @media (max-width: 768px) {
            .main-content {
                margin-left: 0;
            }

            .sidebar {
                width: 60px;
                transition: width 0.3s ease;
            }

            .sidebar h3 {
                font-size: 18px;
            }

            .sidebar ul li a {
                font-size: 14px;
            }

            .site-section-hero h1 {
                font-size: 2em;
            }

            .photo-item {
                width: 100%;
                height: auto;
            }
        }

        .auto-style1 {
            color: black;
            width: 200px;
            position: fixed;
            top: 7;
            left: 3;
            bottom: 2;
            overflow-y: auto;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            transition: width 0.3s ease;
            z-index: 10;
            height: 857px;
            padding: 20px;
            background-color: #f8c806;
        }
        .social-media {
      display: flex;
      gap: 20px;
    }

    .icon {
      width: 60px;
      height: 60px;
      background-color: #fff;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, background-color 0.3s ease;
      font-size: 24px;
    }

    .icon img {
      width: 40px;
      height: 40px;
      object-fit: contain; 
    }

    .icon:hover {
      transform: scale(1.5);
    }
.facebook:hover{
  background-color: #1da1f2;
}
    
    

    .twitter:hover {
      background-color: #1da1f2;
    }

    .Google:hover {
      background-color: #e4405f;
    }

    .Apple:hover {
      background-color: #0077b5;
    }h1{
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      text-align: center;
    }
        h1
    {
color: white;
text-shadow: 0px 0px 10px cyan,
             0px 0px 20px cyan,
             0px 0px 40px cyan,
            0px 0px 80px cyan;
    }
        .auto-style1 {
    background-color: aqua; 
    color: black;
    padding: 20px;
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    width: 250px;
    box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.auto-style1 ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

.auto-style1 ul li {
    width: 100%;
    margin-bottom: 20px;
}

.auto-style1 .nav-link {
    color: purple;
    text-decoration: none;
    font-size: 18px;
    display: block;
    text-align: center;
    padding: 10px;
    background-color: #ff6347; 
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.3s ease;
    width: 100%;
}

.auto-style1 .nav-link:hover {
    background-color: pink; 
    transform: scale(1.1); 
}

@media (max-width: 768px) {
    .auto-style1 {
        width: 60px; 
    }

    .auto-style1 ul li {
        margin-bottom: 10px;
    }

    .auto-style1 .nav-link {
        font-size: 14px; 
        padding: 8px;
    }
}
        .auto-style2 {
            width: 87%;
        }
    </style>
</head>
<body>

    <div class="auto-style1">
        <ul>
            <li><a href="#section-home" class="nav-link">Ev</a></li>
            <li><a href="#section-photos" class="nav-link">Fotoğraflar</a></li>
            <li><a href="#section-about" class="nav-link">Hakkında</a></li>
            <li><a href="admin.aspx" class="nav-link">Admin Paneli</a></li>
            <li class="auto-style2"><a href="message.aspx" class="nav-link">İletişim</a></li>
        </ul>
        
            <div class="social-media">
    
    
    <a href="https://x.com/ibrahimmcx" class="icon twitter" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/c/ce/X_logo_2023.svg" alt="X">
    </a>
    <a href="https://www.instagram.com/ibrahimmcx/" class="icon instagram" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram">
    </a>
    <a href="https://www.linkedin.com/in/ibrahim-culfa-3901452a2/" class="icon linkedin" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="LinkedIn">
    </a>
  </div>
        

    </div>

    <div class="main-content">
        <div class="header-bar">
            <p>Bilişim Sistemleri Mühendisliği Öğrencisi</p>
        </div>

        <section class="site-section-hero" id="section-home">
            <h1>Hoş geldiniz!</h1>
        </section>

        <section class="site-section" id="section-photos">
            <h2 class="text-center">Fotoğraflar</h2>
            <div class="photo-item" onclick="openImage('images/img_1.jpg')">
                <img src="images/img_1.jpg" alt="Image 1">
                <div class="photo-text-more">Göz at</div>
            </div>
            <div class="photo-item" onclick="openImage('images/img_2.jpg')">
                <img src="images/img_2.jpg" alt="Image 2">
                <div class="photo-text-more">Göz at</div>
            </div>
            <div class="photo-item" onclick="openImage('images/img_3.jpg')">
                <img src="images/img_3.jpg" alt="Image 3">
                <div class="photo-text-more">Göz at</div>
            </div>
            <div class="photo-item" onclick="openImage('images/img_4.jpg')">
                <img src="images/img_4.jpg" alt="Image 4">
                <div class="photo-text-more">Göz at</div>
            </div>
            <div class="photo-item" onclick="openImage('images/img_5.jpg')">
                <img src="images/img_5.jpg" alt="Image 5">
                <div class="photo-text-more">Göz at</div>
            </div>
            <div class="photo-item" onclick="openImage('images/img_6.jpg')">
                <img src="images/img_6.jpg" alt="Image 6">
                <div class="photo-text-more">Göz at</div>
            </div>
        </section>

        <div class="photo-viewer" id="photo-viewer">
            <button class="close-viewer" onclick="closeImage()">×</button>
            <img id="photo-large" src="" alt="Large Photo">
        </div>

        <section class="about-section" id="section-about">
            <h2>Hakkında</h2>
            <p>Bilişim sistemleri mühendisliği 2.sınıf öğrencisi olarak Java, HTML, CSS, Javascript, ASP.NET, MSSQL gibi teknolojiler üzerinde çalışıyorum. Bu süreçte birçok proje geliştirdim ve sürekli olarak öğrenmeye devam ediyorum.</p>
            <ul>
                <li>Java Algoritma Eğitimi</li>
                <li>Web Tasarımı ve Frontend Geliştirme</li>
                <li>Topluluk Hizmetleri ve Etkinlik Liderliği</li>
            </ul>
        </section>

        <div class="footer">
            <p>&copy; <script>document.write(new Date().getFullYear());</script> İbrahim Culfa. Sevgiyle tasarlandı.</p>
        </div>
    </div>

    <script>
        function openImage(imageSrc) {
            var viewer = document.getElementById('photo-viewer');
            var largeImage = document.getElementById('photo-large');
            largeImage.src = imageSrc;
            viewer.style.display = 'flex';
        }

        function closeImage() {
            var viewer = document.getElementById('photo-viewer');
            viewer.style.display = 'none';
        }
    </script>

</body>
</html>
