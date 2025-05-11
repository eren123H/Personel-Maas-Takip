<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="Deneme1.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: xx-large">FORMLAR</span></p>
    <p>
        &nbsp;</p>
    <p style="height: 53px">
        <asp:Button ID="Button2" runat="server" Height="56px" OnClick="Button2_Click" Text="Personel Veri Giriş Formu" Width="274px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/PersonelVeriGirişFormu.aspx" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Height="56px" Text="Maaş Veri Giriş Formu" Width="274px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/MaaşVeriGirişFormu.aspx" />
    </p>
    <p style="height: 53px">
        &nbsp;</p>
&nbsp;<asp:Button ID="Button5" runat="server" Height="56px" Text="Maaş Veri Güncelleme Formu" Width="274px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/MaaşVeriGüncellemeFormu.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Height="56px" OnClick="Button3_Click" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/PersonelVeriGüncellemeFormu.aspx" Text="Personel Veri Güncelleme Formu" Width="274px" />
    <br />
    <br />
    <br />
    <br />
    <p class="text-start" style="height: 52px">
        <asp:Button ID="Button7" runat="server" Height="56px" Text="Bölüm Veri Giriş Formu" Width="274px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/BölümVeriGirişFormu.aspx" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Height="56px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/PersonelWizardFormu.aspx" Text="Personel Wizard Formu" Width="274px" />
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
        &nbsp;</p>
</asp:Content>
