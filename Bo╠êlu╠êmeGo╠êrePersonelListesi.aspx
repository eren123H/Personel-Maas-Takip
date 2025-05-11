<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BölümeGörePersonelListesi.aspx.cs" Inherits="Deneme1.BölümeGörePersonelListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3" style="width: 1520px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <tr>
                    <td class="auto-style1"><strong>Bölümlere Göre Personel Listesi</strong></td>
                </tr>
            </table>
            <br class="Apple-interchange-newline" />
            Bölüm Seçiniz : <asp:DropDownList ID="DropDownList1" runat="server" Width="191px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
            </asp:DropDownList>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                    <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                    <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi" />
                    <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                    <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                    <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cep], [Pers_Email], [Bolum_ID], [Pers_Aktif_Mi] FROM [tbl_Personeller] WHERE ([Bolum_ID] = @Bolum_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close(); return false;" Text="RAPORU KAPAT" Width="146px" />
                    </p>
    </form>
</body>
</html>
