<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGüncellemeFormu.aspx.cs" Inherits="Deneme1.PersonelVeriGüncellemeFormu" %>

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
            text-align: center;
        }
        .auto-style3 {
            width: 780px;
        }
    </style>
</head>
<body style="height: 397px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">PERSONEL VERİ GÜNCELLEME FORMU</td>
            </tr>
            <tr>
                <td class="auto-style3">Personel Seçiniz :<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px" OnDeleted="DetailsView1_Deleted">
                        <Fields>
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                            <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                            <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                            <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi" />
                            <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Pers_Cikis_Tarihi" SortExpression="Pers_Cikis_Tarihi" />
                            <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                            <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                            <asp:BoundField DataField="Pers_SGK_No" HeaderText="SGK No" SortExpression="Pers_SGK_No" />
                            <asp:BoundField DataField="Pers_TC_No" HeaderText="TC No" SortExpression="Pers_TC_No" />
                            <asp:BoundField DataField="Kayit_Tarihi" HeaderText="Kayıt Tarihi" SortExpression="Kayit_Tarihi" />
                            <asp:BoundField DataField="Kaydeden" HeaderText="Kaydeden" SortExpression="Kaydeden" />
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" DeleteText="Sil" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                       ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" 
                                       SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Email], [Bolum_ID], [Pers_Cep], [Pers_SGK_No], [Pers_TC_No], [Kayit_Tarihi], [Kaydeden], (SELECT Bolum_Adi FROM tbl_Bolumler WHERE tbl_Bolumler.Bolum_ID = tbl_Personeller.Bolum_ID) AS Bolum_Adi FROM [tbl_Personeller] WHERE ([Pers_ID] = @Pers_ID)" 
                                       UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Giris_Tarihi = @Pers_Giris_Tarihi, Pers_Cikis_Tarihi = @Pers_Cikis_Tarihi, Pers_Cep = @Pers_Cep, Pers_Email = @Pers_Email, Bolum_ID = @Bolum_ID, Pers_Aktif_Mi = @Pers_Aktif_Mi, Pers_SGK_No = @Pers_SGK_No, Pers_TC_No = @Pers_TC_No, Kayit_Tarihi = @Kayit_Tarihi, Kaydeden = @Kaydeden WHERE ([Pers_ID] = @Pers_ID)"
                                       DeleteCommand="DELETE FROM tbl_Personeller WHERE Pers_ID = @Pers_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Pers_Adi" />
                            <asp:Parameter Name="Pers_Soyadi" />
                            <asp:Parameter Name="Pers_DTarihi" />
                            <asp:Parameter Name="Pers_Giris_Tarihi" />
                            <asp:Parameter Name="Pers_Cikis_Tarihi" />
                            <asp:Parameter Name="Pers_Cep" />
                            <asp:Parameter Name="Pers_Email" />
                            <asp:Parameter Name="Bolum_ID" />
                            <asp:Parameter Name="Pers_Aktif_Mi" />
                            <asp:Parameter Name="Pers_SGK_No" />
                            <asp:Parameter Name="Pers_TC_No" />
                            <asp:Parameter Name="Kayit_Tarihi" />
                            <asp:Parameter Name="Kaydeden" />
                            <asp:Parameter Name="Pers_ID" />
                        </UpdateParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="Pers_ID" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
