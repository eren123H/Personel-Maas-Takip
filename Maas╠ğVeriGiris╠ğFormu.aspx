<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaaşVeriGirişFormu.aspx.cs" Inherits="Deneme1.MaaşVeriGirişFormu" %>

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
            width: 207px;
        }
        .auto-style4 {
            width: 207px;
            height: 142px;
        }
        .auto-style5 {
            height: 142px;
        }
        .auto-style6 {
            width: 207px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style8 {
            width: 207px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            width: 207px;
            height: 18px;
        }
        .auto-style11 {
            height: 18px;
        }
        .auto-style12 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;MAAŞ VERİ GİRİŞ FORMU</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Personel Adı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tarihi:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Maaş:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Komisyon:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Verileri Kaydet" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" InsertCommand="INSERT INTO tbl_Maaslar(Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu) VALUES (@Pers_ID, @Maas_Tarihi, @Maas_Tutari, @Maas_Komisyonu)" SelectCommand="SELECT Maas_ID, Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, [Maas_Toplam ], Maas_Yili, Ay_ID FROM tbl_Maaslar">
                        <InsertParameters>
                            <asp:Parameter Name="Pers_ID" />
                            <asp:Parameter Name="Maas_Tarihi" />
                            <asp:Parameter Name="Maas_Tutari" />
                            <asp:Parameter Name="Maas_Komisyonu" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style11">
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
