<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentUpdate.aspx.cs" Inherits="StudentUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" style="height: 100; width: 100%">
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    Student Update Demo
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Roll-no:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtRollno" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Name:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Address:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Phone:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Emailid:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="1" style="height: 100; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                                    onclick="btndelete_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
