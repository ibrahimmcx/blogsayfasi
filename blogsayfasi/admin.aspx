<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="YourNamespace.AdminPanel" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
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

        .admin-panel {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        .admin-panel h1 {
            color: #fff;
            margin-bottom: 20px;
        }

        .admin-panel label {
            color: #fff;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .admin-panel input {
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

        .admin-panel input[type="submit"],
        .admin-panel button {
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

        .admin-panel input[type="submit"]:hover,
        .admin-panel button:hover {
            background: linear-gradient(45deg, #fff172, #ff357a);
        }

        .alert {
            margin-top: 15px;
            font-size: 14px;
        }

        .admin-panel hr {
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
    <div class="admin-panel">
        <h1>Admin Panel</h1>

        
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="txtEmail">E-posta:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-posta girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtPassword">Şifre:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Şifre girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtPhotoUrl">Fotoğraf URL:</label>
                <asp:TextBox ID="txtPhotoUrl" runat="server" CssClass="form-control" placeholder="Fotoğraf URL'si girin"></asp:TextBox>
            </div>

            <asp:Button ID="btnAdd" runat="server" Text="Ekle" OnClick="btnAdd_Click" CssClass="btn" />

            <hr />
                <div class="mb-3">
                <label for="txtEmailToDelete">Silinecek Kullanıcı E-posta:</label>
                <asp:TextBox ID="txtEmailToDelete" runat="server" CssClass="form-control" placeholder="E-posta girin"></asp:TextBox>
            </div>

            <asp:Button ID="btnDelete" runat="server" Text="Sil" OnClick="btnDelete_Click" CssClass="btn btn-danger" />
           <asp:Label ID="Label1" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>

           <div class="error-label">
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="alert alert-danger" Visible="false"></asp:Label>
            </div>
        </form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
