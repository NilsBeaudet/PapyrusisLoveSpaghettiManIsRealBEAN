<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SiteWebSoloBEAN.WebForm1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body class="backgroundcolorlog">
    <form id="form1" runat="server">
        <div class="login">
            <asp:Label runat="server" ID="nom" Text="Nom: " />
            <asp:TextBox runat="server" ID="tbNom" />
            <br />
            <asp:Label runat="server" ID="Email" Text="Email" />
            <asp:TextBox runat="server" ID="tbEmail"/>
            <br />
            <asp:button runat="server" ID="btnLog" OnClick="btnLog_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
