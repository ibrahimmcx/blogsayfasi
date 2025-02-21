<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="YourNamespace.WebForm" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>İletişim Formu</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Quicksand", sans-serif;
        }
        body {
            background-color: #111;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        .form-container h2 {
            color: #fff;
            margin-bottom: 20px;
        }

        .form-container label {
            color: #fff;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .form-container input,
        .form-container textarea {
            width: 100%;
            padding: 12px;
            background: transparent;
            border: 2px solid #fff;
            border-radius: 50px;
            color: #fff;
            font-size: 1em;
            outline: none;
            margin-bottom: 15px;
        }

        .form-container button {
            width: 100%;
padding: 12px;
background: linear-gradient(45deg, #ff357a, #fff172);
border: none;
border-radius: 50px;
cursor: pointer;
color: #fff;
font-size: 1.1em;
transition: 0.3s;
        }

        .form-container button:hover {
            background: linear-gradient(45deg, #fff172, #ff357a);
        }

        .alert {
            margin-top: 15px;
            font-size: 14px;
        }

        .form-container hr {
            border: 1px solid #fff;
            margin: 20px 0;
        }

        .links {
            margin-top: 15px;
            font-size: 14px;
            color: #fff;
        }

        .links a {
            color: #fff;
            text-decoration: none;
        }

        .error-label {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>İletişim Formu</h2>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="txtFirstName">İsim:</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Adınızı girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtLastName">Soyisim:</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Soyadınızı girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtEmail">E-posta:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-posta adresinizi girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtMessage">Mesaj:</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Mesajınızı girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Button ID="btnSubmit" runat="server" Text="Mesajı Gönder" OnClick="btnSubmit_Click" CssClass="btn" />
            </div>

            <hr />

            <div class="links">
                <a href="#">Ana Sayfa</a> | <a href="#">Destek</a>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
