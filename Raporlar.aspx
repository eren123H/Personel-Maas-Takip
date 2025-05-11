<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="Deneme1.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        RAPORLAR</p>
    <table class="w-100">
        <tr>
            <td style="width: 702px">
                <asp:Button ID="Button2" runat="server" Height="56px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/BölümeGörePersonelListesi.aspx" Text="Bölüme Göre Personel Listesi" Width="274px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Height="56px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/PersoneleGöreMaaşListesi.aspx" Text="Personele Göre Maaş Listesi" Width="274px" />
            </td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 702px">
                <asp:Button ID="Button4" runat="server" Height="56px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/PersoneleGöreYıllıkMaaşGrafiği.aspx" Text="Personele Göre Yıllık Maaş Grafiği" Width="295px" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Height="56px" OnClientClick="target=&quot;__blank&quot;" PostBackUrl="~/PersonelİetişimRaporu.aspx" Text="Personel İletişim Raporu" Width="274px" />
            </td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 702px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
