<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BölümVeriGirişi.aspx.cs" Inherits="Deneme1.BölümVeriGirişi" %>

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
            height: 26px;
        }
        .auto-style3 {
            width: 319px;
        }
        .auto-style4 {
            height: 26px;
            width: 319px;
        }
        .auto-style5 {
            color: red;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Bölüm Veri Girişi
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Bölüm Adı :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Böüm Tel:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">Yönetici ID:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Yönetici ID'niz Pers ID'nizle aynıdır." CssClass="auto-style5" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" InsertCommand="INSERT INTO tbl_Bolumler(Bolum_Adi, Bolum_Tel, Yonetici_ID) VALUES (@Bolum_Adi, @Bolum_Tel, @Yonetici_ID)" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler]">
                        <InsertParameters>
                            <asp:Parameter Name="Bolum_Adi" />
                            <asp:Parameter Name="Bolum_Tel" />
                            <asp:Parameter Name="Yonetici_ID" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Verileri Kaydet" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" Width="146px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
