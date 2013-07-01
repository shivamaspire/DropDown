<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadDemo.aspx.cs" Inherits="UploadDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Select File To Upload:<asp:FileUpload ID="flUpload" runat="server" /><br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" 
            onclick="btnUpload_Click" /><br />
        <asp:Label ID="lblAns" runat="server" Text=""></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
