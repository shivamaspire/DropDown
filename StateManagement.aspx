<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StateManagement.aspx.cs" Inherits="StateManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enter Name:<asp:TextBox ID="txtUser" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Click" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
