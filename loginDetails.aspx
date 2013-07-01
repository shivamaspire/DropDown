<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginDetails.aspx.cs" Inherits="loginDetails" %>

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
                        <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                            <tr style="height: 40%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <h2>
                                        Login </h2>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                Enter name:
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                Enter Password:
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btnlogin" runat="server" Text="Login" 
                                                    onclick="Btnlogin_Click" />
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btncancl" runat="server" Text="Cancel" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btnchange" runat="server" Text="Change Password" 
                                                    onclick="Btnchange_Click" />
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btnfor" runat="server" Text="ForgetPassword" 
                                                    onclick="Btnfor_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr style="height: 33%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Panel ID="Panel2" runat="server">
                        <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                            <tr style="height: 50%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <h2>
                                        Forget Password</h2>
                                </td>
                            </tr>
                            <tr style="height: 25%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                Enter Password:
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 25%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Button1" runat="server" Text="Reset" />
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr style="height: 33%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Panel ID="Panel3" runat="server">
                        <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                            <tr style="height: 50%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <h2>
                                        Change Password</h2>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                Enter Password:
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:TextBox ID="Txtpass3" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 15%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                Enter confirm-Password:
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:TextBox ID="Txtconp3" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 20%">
                                <td style="width: 100%; text-align: center; vertical-align: middle">
                                    <table border="1" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                                        <tr style="height: 100%">
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btnchange1" runat="server" Text="change" />
                                            </td>
                                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                                <asp:Button ID="Btncancl1" runat="server" Text="Cancel" 
                                                    onclick="Btncancl1_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
