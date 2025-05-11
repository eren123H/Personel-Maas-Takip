<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneleGöreMaaşListesi.aspx.cs" Inherits="Deneme1.PersoneleGöreMaaşListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3" style="width: 1520px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <tr>
                    <td class="auto-style1" style="font-size: x-large;"><strong>Personele Göre Maaş Listesi</strong></td>
                </tr>
            </table>
            <br class="Apple-interchange-newline" />
            Personel Seçiniz:<asp:DropDownList ID="DropDownList1" runat="server" Width="151px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
            </asp:DropDownList>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Maas_Tarihi" HeaderText="Maas_Tarihi" SortExpression="Maas_Tarihi" />
                    <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                    <asp:BoundField DataField="Maas_Komisyonu" HeaderText="Maas_Komisyonu" SortExpression="Maas_Komisyonu" />
                    <asp:BoundField DataField="Maas_Toplam_" HeaderText="Maas_Toplam_" ReadOnly="True" SortExpression="Maas_Toplam_" />
                    <asp:BoundField DataField="Maas_Yili" HeaderText="Maas_Yili" ReadOnly="True" SortExpression="Maas_Yili" />
                    <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" ReadOnly="True" SortExpression="Maas_ID" />
                    <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam ] AS Maas_Toplam_, [Maas_Yili], [Maas_ID], [Pers_ID] FROM [tbl_Maaslar] WHERE ([Pers_ID] = @Pers_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
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
