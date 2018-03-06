<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="WebApplication3.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
           // align-items:center;
           text-align:center;
        }
        Button{
            align-self:center;
        }
        form{
            text-align:center;
        }
        placeholder{
            text-align:center;
        }
        table{
            text-align:center;
            align-content:center;
            align-items:center;
            align-self:center;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="Staff"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View List of Delivery Orders" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View List of Pickup orders" />
        <br />
        <br />
        <br />
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Enter Order ID"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update status of pickup" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update status of delivery" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Logout" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
