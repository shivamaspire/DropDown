<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DatabaseLoginDetails.aspx.cs"
    Inherits="DatabaseLoginDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" style="height: 1005; width: 100%">
            <tr style="height: 10%">
                <td style="width: 50%; text-align: center; vertical-align: middle">
                    <table border="0" style="width: 100%; height: 100%">
                        <tr style="height: 100">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Enter Id;
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 10%">
                <td style="width: 50%; text-align: center; vertical-align: middle">
                    <table border="0" style="width: 100%; height: 100%">
                        <tr style="height: 100">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Enter Name;
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        <tr style="height: 10%">
                <td style="width: 50%; text-align: center; vertical-align: middle">
                    <table border="0" style="width: 100%; height: 100%">
                        <tr style="height: 100">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Enter Password;
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 10%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <table border="0" style="width: 100%; height: 100%">
                        <tr style="height: 100">
                            <td style="width: 20%; text-align: center; vertical-align: middle">
                                <asp:Button ID="BtnSave" runat="server" Text="Save" onclick="BtnSave_Click" />
                            </td>
                            <td style="width: 20%; text-align: center; vertical-align: middle">
                                <asp:Button ID="BtnUpdate" runat="server" Text="Update" 
                                    onclick="BtnUpdate_Click" />
                                 </td>
                         <td style="width: 20%; text-align: center; vertical-align: middle">
                                <asp:Button ID="BtnDelete" runat="server" Text="Delete" 
                                    onclick="BtnDelete_Click" />
                                 </td>
                         <td style="width: 20%; text-align: center; vertical-align: middle">
                                <asp:Button ID="ButnInsert" runat="server" Text="Insert" />
                                 </td>
                         <td style="width: 20%; text-align: center; vertical-align: middle">
                                <asp:Button ID="BtnClose" runat="server" Text="Close" 
                                    onclick="BtnClose_Click" />
                                 </td>
                        
                        
                        
                        </tr>
                    </table>
                </td>
            </tr>

        <tr style="height: 10%">
                <td style="width: 50%; text-align: center; vertical-align: middle">
                    <asp:DataGrid ID="dgLogin" runat="server" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Horizontal" Width="100%">
                        <AlternatingItemStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" 
                            Mode="NumericPages" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:DataGrid>
        </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
