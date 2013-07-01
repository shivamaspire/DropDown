<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MathsDemo.aspx.cs" Inherits="MathsDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enter Number1:<asp:TextBox ID="txtNum1" runat="server"></asp:TextBox><br />
        Enter Number2:<asp:TextBox ID="txtNum2" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnClick" runat="server" Text="Add" onclick="btnClick_Click" /><br />
        <asp:Label ID="lbaAns" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
