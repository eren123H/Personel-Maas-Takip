<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaaşVeriGüncellemeFormu.aspx.cs" Inherits="Deneme1.MaaşVeriGüncellemeFormu" %>

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
            width: 311px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            MAAŞ VERİ GÜNCELLEME FORMU
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Personel Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" ReadOnly="True" />
                            <asp:BoundField DataField="Maas_Tarihi" HeaderText="Maas_Tarihi" SortExpression="Maas_Tarihi" />
                            <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                            <asp:BoundField DataField="Maas_Komisyonu" HeaderText="Maas_Komisyonu" SortExpression="Maas_Komisyonu" />
                            <asp:CommandField ShowEditButton="True" />
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" 
                        SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" 
                        SelectCommand="SELECT [Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu] FROM [tbl_Maaslar] WHERE([Pers_ID] = @Pers_ID)" 
                        UpdateCommand="UPDATE tbl_Maaslar SET Maas_Tarihi = @Maas_Tarihi, Maas_Tutari = @Maas_Tutari, Maas_Komisyonu = @Maas_Komisyonu WHERE Maas_ID = @Maas_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Maas_Tarihi" Type="String" />
                            <asp:Parameter Name="Maas_Tutari" Type="Decimal" />
                            <asp:Parameter Name="Maas_Komisyonu" Type="Decimal" />
                            <asp:Parameter Name="Maas_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
