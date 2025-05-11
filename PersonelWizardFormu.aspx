<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelWizardFormu.aspx.cs" Inherits="Deneme1.PersonelWizardFormu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Personel Wizard Formu</title> 
    <style type="text/css">
        .auto-style1 { width: 1%; height: 243px; }
        .auto-style15 { width: 100%; }
        .auto-style16 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Personel Wizard Formu</h1>
        <div class="auto-style16">
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="390px" Width="807px" OnFinishButtonClick="Wizard1_FinishButtonClick" OnActiveStepChanged="Wizard1_ActiveStepChanged">
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Önceki" />
                <asp:Button ID="FinishButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Son" />
            </FinishNavigationTemplate>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
            <WizardSteps>
                <asp:WizardStep runat="server" Title="Kişisel Veriler">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">Adı:</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Soyadı:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Doğum Tarihi:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Giriş Tarihi:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Ünvanı:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Unvan" DataValueField="K_ID">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Cinsiyeti:</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>

                <asp:WizardStep runat="server" Title="İletişim Verileri">
                    <table class="auto-style15">
                        <tr>
                            <td class="auto-style17">Tel:</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">Cep:</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">Email:</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">Bölüm:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>

                <asp:WizardStep runat="server" Title="Adres Verileri">
                    <table class="auto-style15">
                        <tr>
                            <td class="auto-style16">Adresi:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">İli:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Pers_Ili" DataValueField="Pers_Ili">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">İlçesi:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Pers_Ilcesi" DataValueField="Pers_Ilcesi">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>

                <asp:WizardStep runat="server" Title="Onay">
                    <div>
                        <h3>Girdiğiniz Veriler:</h3>
                        <asp:Label ID="Label2" runat="server" Text="Veriler buraya gelecek..." Font-Bold="True" ForeColor="Green"></asp:Label>
                        <br />
                    </div>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>

        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Giris_Tarihi, @Pers_Adresi, @Pers_Ilcesi, @Pers_Ili, @Pers_Tel, @Pers_Cep, @Pers_Email, @Bolum_ID, @Cinsiyet_ID, @Unvan_ID)" ID="SqlDataSource5" SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID FROM tbl_Personeller">
            <InsertParameters>
                <asp:Parameter Name="Pers_Adi"></asp:Parameter>
                <asp:Parameter Name="Pers_Soyadi"></asp:Parameter>
                <asp:Parameter Name="Pers_DTarihi"></asp:Parameter>
                <asp:Parameter Name="Pers_Giris_Tarihi"></asp:Parameter>
                <asp:Parameter Name="Pers_Adresi"></asp:Parameter>
                <asp:Parameter Name="Pers_Ilcesi"></asp:Parameter>
                <asp:Parameter Name="Pers_Ili"></asp:Parameter>
                <asp:Parameter Name="Pers_Tel"></asp:Parameter>
                <asp:Parameter Name="Pers_Cep"></asp:Parameter>
                <asp:Parameter Name="Pers_Email"></asp:Parameter>
                <asp:Parameter Name="Bolum_ID"></asp:Parameter>
                <asp:Parameter Name="Cinsiyet_ID"></asp:Parameter>
                <asp:Parameter Name="Unvan_ID"></asp:Parameter>
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Unvan], [K_ID] FROM [tbl_Kategoriler]" ID="SqlDataSource1"></asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Pers_Ilcesi] FROM [tbl_Personeller]" ID="SqlDataSource4"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close(); return false;" Text="Formu Kapat" />
        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT DISTINCT [Pers_Ili] FROM [tbl_Personeller]" ID="SqlDataSource3"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:PMTP_ConnectionConnectionString31 %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]" ID="SqlDataSource2"></asp:SqlDataSource>

    </form>
</body>
</html>
