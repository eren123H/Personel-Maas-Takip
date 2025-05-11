<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneleGöreYıllıkMaaşGrafiği.aspx.cs" Inherits="Deneme1.PersoneleGöreYıllıkMaaşGrafiği" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="width: 1520px; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; text-align: center;">
                <tr>
                    <td class="auto-style3" colspan="3" style="font-size: x-large; text-align: center;"></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3" style="font-size: x-large; text-align: center;">
                        <strong>Toplam Personel Maaşları Grafiği</strong>
                    </td>
                </tr>
            </table>
            Yıl Seçiniz:
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="101px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Maas_Yili" DataValueField="Maas_Yili">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Width="726px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Pers_Isim" YValueMembers="Maas_Tutari1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Button ID="Button2" runat="server" OnClientClick="window.close(); return false;" Text="RAPORU KAPAT" Width="146px" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Maas_Yili] FROM [tbl_Maaslar]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" 
                SelectCommand="SELECT p.Pers_Isim, SUM(m.Maas_Tutari) AS Maas_Tutari1 FROM tbl_Personeller AS p 
                               INNER JOIN tbl_Maaslar AS m ON p.Pers_ID = m.Pers_ID 
                               WHERE m.Maas_Yili = @Maas_Yili 
                               GROUP BY p.Pers_Isim">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Maas_Yili" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
