<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelVeriGirişFormu.aspx.cs" Inherits="Deneme1.PersonelVeriGirişFormu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 338px;
            margin-top: 38px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 349px;
        }
        .auto-style4 {
            width: 349px;
            height: 36px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 349px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 36px;
        }
        .auto-style10 {
            height: 32px;
            width: 349px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td style="text-align: center" class="auto-style8">PERSONEL VERİ GİRİŞ FORMU</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">ADI:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="4">SOYADI:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">CİNSİYETİ : 
&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style9" colspan="4">DOĞUM TARİHİ :
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">ÜNVANI:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Unvan" DataValueField="K_ID">
                        </asp:DropDownList>
                    </td>
                    <td colspan="4">BÖLÜMÜ:<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">İŞE GİRİŞ TARİHİ : <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="4">ÇIKIŞ TARİHİ:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">CEP TEL : <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="4">EMAİL: <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">ADRES:<asp:TextBox ID="TextBox8" runat="server" Width="969px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">İLÇE:<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Ilce_Adi" DataValueField="Ilce_Adi">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5" colspan="4">İL:<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Il_Adi" DataValueField="Il_Adi">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">SGK NO: 
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="4">TC NO:
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">KAYIT TARİHİ: 
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="4">KAYDEDEN:
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">AKTİF Mİ :
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="VERİLERİ KAYDET" Width="165px" CssClass="auto-style11" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close(); return false;" Text="FORMU KAPAT" Width="146px" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Unvan], [K_ID] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Aktif_Mi, Pers_SGK_No, Pers_TC_No, Kayit_Tarihi, Kaydeden) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Giris_Tarihi, @Pers_Cikis_Tarihi, @Pers_Adresi, @Pers_Ilcesi, @Pers_Ili, @Pers_Cep, @Pers_Email, @Bolum_ID, @Cinsiyet_ID, @Unvan_ID, @Pers_Aktif_Mi, @Pers_SGK_No, @Pers_TC_No, @Kayit_Tarihi, @Kaydeden)" SelectCommand="SELECT [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Cep], [Pers_Ili], [Pers_Ilcesi], [Pers_Aktif_Mi], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_SGK_No], [Pers_TC_No], [Kayit_Tarihi], [Kaydeden] FROM [tbl_Personeller]">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Pers_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Cikis_Tarihi" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Ilcesi" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                                <asp:Parameter Name="Pers_SGK_No" />
                                <asp:Parameter Name="Pers_TC_No" />
                                <asp:Parameter Name="Kayit_Tarihi" />
                                <asp:Parameter Name="Kaydeden" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Ilce_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Il_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>