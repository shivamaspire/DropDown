<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DynamicTableDemo.aspx.cs" Inherits="DynamicTableDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server" Height="355px" Width="602px">
        </asp:Table>
        <br />
        <asp:Label ID="lblAns" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
