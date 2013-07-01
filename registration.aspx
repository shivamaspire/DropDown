<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" cellpadding="0" style="height: 100%; width: 100%">
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                Enter First-Name:
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:TextBox ID="TxtFName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                Enter Last-Name:
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:TextBox ID="TxtLName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                Enter Password:
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                Enter Con-Password:
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:TextBox ID="TxtCpass" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                <asp:RadioButton ID="Male" runat="server" GroupName="gender" />Male
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:RadioButton ID="Female" runat="server" GroupName="gender" />Female
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: center; vertical-align: top">
                                Enter Your Address:
                                <textarea name="txtAddress" cols="10" rows="3" id="txtAddress" runat="server"></textarea>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle; margin-left: 10px">
                                Enter Your BirthDay:
                            </td>
                            <td style="width: 50%; text-align: left; vertical-align: middle; position: relative;
                                margin-left: 10px">
                                <asp:Calendar ID="CalBirthday" runat="server" BackColor="White" BorderColor="White"
                                    BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px"
                                    NextPrevFormat="FullMonth" Width="350px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                                        Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 50%; text-align: right; vertical-align: middle">
                                <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" Width="56px" />
                            </td>
                            <td style="width: 50%;" class="textformat">
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5%">
                <td style="width: 100%;">
                    <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                        <tr style="height: 100%">
                            <td style="width: 100%; text-align: right; vertical-align: middle">
                                <asp:DataGrid ID="Dglogin1" runat="server" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal" Width="627px">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DataGrid>
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
