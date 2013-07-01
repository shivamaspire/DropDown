<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstState.aspx.cs" Inherits="FirstState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label><br />
        <asp:LinkButton ID="lnbSecond" runat="server" onclick="lnbSecond_Click">Second</asp:LinkButton>
    </div>
    </form>
</body>
</html>
