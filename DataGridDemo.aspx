<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGridDemo.aspx.cs" Inherits="DataGridDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" style="height: 100%; width: 100%">
            <tr style="height: 50%">
                <td style="height: 100%; text-align: center; vertical-align: middle">
                    DataGridDemo
                </td>
            </tr>
            <tr style="height: 50%">
                <td style="height: 100%; text-align: center; vertical-align: middle">
                    <asp:DataGrid ID="Dglogin" runat="server" BackColor="White" 
                        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                        GridLines="Horizontal" Height="322px" Width="651px" 
                        oncancelcommand="Dglogin_CancelCommand" ondeletecommand="Dglogin_DeleteCommand" 
                        oneditcommand="Dglogin_EditCommand" onupdatecommand="Dglogin_UpdateCommand">
                        <Columns>
                            <asp:TemplateColumn HeaderText="RollNo">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" id="txtRollno"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.RollNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" id="lblRollno"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.RollNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="name">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" id="TxtName"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" id="LblName"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" id="TxtAddress"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.Address") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" id="LblAddress"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="emailid">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" id="TxtEmail"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.emailid") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" id="LblEmail"
                                        Text='<%# DataBinder.Eval(Container, "DataItem.emailid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Delete" 
                                        Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update">
                            </asp:EditCommandColumn>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" 
                            Mode="NumericPages" />
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:DataGrid>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
