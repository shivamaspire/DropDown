<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanelDemo.aspx.cs" Inherits="PanelDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
            <tr style="height: 33%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="Panel2" onclick="Button1_Click" />
                    </asp:Panel>
                </td>
            </tr>
             <tr style="height: 33%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Button ID="Button2" runat="server" Text="panel3" onclick="Button2_Click" />
                    </asp:Panel>
                </td>
            </tr>
        <tr style="height: 33%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Button ID="Button3" runat="server" Text="panel1" onclick="Button3_Click" />
                    </asp:Panel>
                </td>
            </tr>
       
        </table>
    </div>
    </form>
</body>
</html>
