<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BölümVeriGirişFormu.aspx.cs" Inherits="Deneme1.BölümVeriGirişFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 664px;
        }
        .auto-style4 {
            width: 664px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            BÖLÜM VERİ GİRİŞ FORMU</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bolum_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" ReadOnly="True" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                            <asp:BoundField DataField="Bolum_Tel" HeaderText="Bolum_Tel" SortExpression="Bolum_Tel" />
                            <asp:BoundField DataField="Yonetici_ID" HeaderText="Yonetici_ID" SortExpression="Yonetici_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/BölümVeriGirişi.aspx" Text="Yeni Bölüm Veri Girişi" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" Width="146px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
