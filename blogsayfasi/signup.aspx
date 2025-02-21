<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="YourNamespace.Kayit" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kullanıcı Kayıt Formu</title>
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

        .form-container input {
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

        .form-container .links {
            margin-top: 20px;
            font-size: 14px;
            color: #fff;
        }

        .form-container .links a {
            color: #fff;
            text-decoration: none;
        }

        .form-container hr {
            border: 1px solid #fff;
            margin: 20px 0;
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
        <h2>Kullanıcı Kayıt</h2>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="txtEmail">E-posta:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-posta adresinizi girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtPassword">Şifre:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Şifrenizi girin" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Button ID="btnRegister" runat="server" Text="Kayıt Ol" OnClick="btnRegister_Click" CssClass="btn" />
            </div>

            <hr />

            <div class="links">
                <a href="giriş.aspx">Giriş Yap</a>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
