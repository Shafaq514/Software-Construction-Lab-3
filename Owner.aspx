<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="WebApplication3.Owner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="Owner"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View List of Delivery Orders" />
            &nbsp;
        <asp:Button ID="Button2" runat="server" Text="View List of Pickup Orders" OnClick="Button2_Click" />
        <br />
        <br />
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />

        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Total Number of Orders" />
        <br />
        <br />
        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Logout" />

    <div>
    
    </div>
    </form>
</body>
</html>
