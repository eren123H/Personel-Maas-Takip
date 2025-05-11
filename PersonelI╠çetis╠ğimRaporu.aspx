<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelİetişimRaporu.aspx.cs" Inherits="Deneme1.PersonelİetişimRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 761px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: x-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Personel İletişim Raporu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></strong></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
            <strong style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: x-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span><asp:Button ID="Button2" runat="server" OnClientClick="window.close(); return false;" Text="RAPORU KAPAT" Width="146px" />
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="Pers_IDLabel" runat="server" Text='<%# Eval("Pers_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_IsimLabel" runat="server" Text='<%# Eval("Pers_Isim") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_TelLabel" runat="server" Text='<%# Eval("Pers_Tel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_CepLabel" runat="server" Text='<%# Eval("Pers_Cep") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_EmailLabel" runat="server" Text='<%# Eval("Pers_Email") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_IDLabel1" runat="server" Text='<%# Eval("Pers_ID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_IsimTextBox" runat="server" Text='<%# Bind("Pers_Isim") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_TelTextBox" runat="server" Text='<%# Bind("Pers_Tel") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_CepTextBox" runat="server" Text='<%# Bind("Pers_Cep") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_EmailTextBox" runat="server" Text='<%# Bind("Pers_Email") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>Hiçbir veri döndürülmedi.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Ekle" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Temizle" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="Pers_IsimTextBox" runat="server" Text='<%# Bind("Pers_Isim") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_TelTextBox" runat="server" Text='<%# Bind("Pers_Tel") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_CepTextBox" runat="server" Text='<%# Bind("Pers_Cep") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Pers_EmailTextBox" runat="server" Text='<%# Bind("Pers_Email") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="Pers_IDLabel" runat="server" Text='<%# Eval("Pers_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_IsimLabel" runat="server" Text='<%# Eval("Pers_Isim") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_TelLabel" runat="server" Text='<%# Eval("Pers_Tel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_CepLabel" runat="server" Text='<%# Eval("Pers_Cep") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_EmailLabel" runat="server" Text='<%# Eval("Pers_Email") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">Pers_ID</th>
                                                <th runat="server">Pers_Isim</th>
                                                <th runat="server">Pers_Tel</th>
                                                <th runat="server">Pers_Cep</th>
                                                <th runat="server">Pers_Email</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="Pers_IDLabel" runat="server" Text='<%# Eval("Pers_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_IsimLabel" runat="server" Text='<%# Eval("Pers_Isim") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_TelLabel" runat="server" Text='<%# Eval("Pers_Tel") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_CepLabel" runat="server" Text='<%# Eval("Pers_Cep") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Pers_EmailLabel" runat="server" Text='<%# Eval("Pers_Email") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim], [Pers_Tel], [Pers_Cep], [Pers_Email] FROM [tbl_Personeller]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
