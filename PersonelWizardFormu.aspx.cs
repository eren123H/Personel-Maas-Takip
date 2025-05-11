using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme1
{
    public partial class PersonelWizardFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklendiğinde yapılacak işlemler
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if (Wizard1.ActiveStep.Title == "Onay")
            {
                // Onay adımına geçildiğinde, kullanıcı girdiği verileri kontrol etsin
                Label2.Text = "Adı: " + TextBox1.Text + "<br />";
                Label2.Text += "Soyadı: " + TextBox2.Text + "<br />";
                Label2.Text += "Doğum Tarihi: " + TextBox3.Text + "<br />";
                Label2.Text += "Giriş Tarihi: " + TextBox4.Text + "<br />";
                Label2.Text += "Ünvan: " + DropDownList1.SelectedItem.Text + "<br />";
                Label2.Text += "Cinsiyet: " + (RadioButtonList1.SelectedValue == "1" ? "Erkek" : "Kadın") + "<br />";

                // İletişim Verileri
                Label2.Text += "Tel: " + TextBox6.Text + "<br />";
                Label2.Text += "Cep: " + TextBox7.Text + "<br />";
                Label2.Text += "Email: " + TextBox8.Text + "<br />";
                Label2.Text += "Bölüm: " + DropDownList5.SelectedItem.Text + "<br />";

                // Adres Verileri
                Label2.Text += "Adres: " + TextBox5.Text + "<br />";
                Label2.Text += "İl: " + DropDownList3.SelectedItem.Text + "<br />";
                Label2.Text += "İlçe: " + DropDownList4.SelectedItem.Text + "<br />";

                // "Emin misiniz?" sorusu
                Label2.Text += "<br /><strong>Emin misiniz?</strong><br />";

                // Onay sayfasında verileri görüntülemek için
                Label2.Visible = true;
            }
        }
        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            // Kişisel Veriler adımındaki kontroller
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) ||
                string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) ||
                DropDownList1.SelectedItem == null || RadioButtonList1.SelectedItem == null)
            {
                // Eğer gerekli alanlar boşsa, uyarı mesajı göster
                Label1.Visible = true;
                Label1.Text = "Lütfen tüm kişisel verileri doldurun!";
                e.Cancel = true;  // Adımın ileri gitmesini engelle
            }

            // İletişim Verileri adımındaki kontroller
            if (string.IsNullOrEmpty(TextBox6.Text) || string.IsNullOrEmpty(TextBox7.Text) ||
                string.IsNullOrEmpty(TextBox8.Text) || DropDownList5.SelectedItem == null)
            {
                // Eğer iletişim verileri eksikse, uyarı mesajı göster
                Label1.Visible = true;
                Label1.Text = "Lütfen tüm iletişim verilerini doldurun!";
                e.Cancel = true;  // Adımın ileri gitmesini engelle
            }

            // Adres Verileri adımındaki kontroller
            if (string.IsNullOrEmpty(TextBox5.Text) || DropDownList3.SelectedItem == null || DropDownList4.SelectedItem == null)
            {
                // Eğer adres verileri eksikse, uyarı mesajı göster
                Label1.Visible = true;
                Label1.Text = "Lütfen tüm adres verilerini doldurun!";
                e.Cancel = true;  // Adımın ileri gitmesini engelle
            }
        }

        // Onay adımına geçmeden önce yapılacak genel kontroller
       

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
             
            // Burada da final verilerinin kontrolü yapılabilir.
            if (Label1.Visible)
            {
                // Eğer uyarı varsa, sayfayı yenile
                Response.Redirect(Request.Url.ToString()); // Sayfayı yeniler
            }
        
            try
            {
                // SQL Insert işlemi için parametreleri ayarla
                SqlDataSource5.InsertParameters["Pers_Adi"].DefaultValue = TextBox1.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_Soyadi"].DefaultValue = TextBox2.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox3.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_Giris_Tarihi"].DefaultValue = TextBox4.Text.Trim();
                SqlDataSource5.InsertParameters["Unvan_ID"].DefaultValue = DropDownList1.SelectedValue;
                SqlDataSource5.InsertParameters["Cinsiyet_ID"].DefaultValue = RadioButtonList1.SelectedValue;
                SqlDataSource5.InsertParameters["Pers_Cep"].DefaultValue = TextBox7.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_Tel"].DefaultValue = TextBox6.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_Email"].DefaultValue = TextBox8.Text.Trim();
                SqlDataSource5.InsertParameters["Bolum_ID"].DefaultValue = DropDownList5.SelectedValue;
                SqlDataSource5.InsertParameters["Pers_Adresi"].DefaultValue = TextBox5.Text.Trim();
                SqlDataSource5.InsertParameters["Pers_Ilcesi"].DefaultValue = DropDownList4.SelectedValue;
                SqlDataSource5.InsertParameters["Pers_Ili"].DefaultValue = DropDownList3.SelectedValue;

                // Veritabanına ekleme işlemi
                int rowsInserted = SqlDataSource5.Insert();

                if (rowsInserted > 0)
                {
                    Label2.Text = "Veri başarıyla eklendi.";
                }
                else
                {
                    Label2.Text = "Veri eklenemedi. Lütfen tekrar deneyin.";
                }

                Label2.Visible = true;
            }
            catch (Exception ex)
            {
                // Hata mesajı
                Label2.Text = "Bir hata oluştu: " + ex.Message;
                Label2.Visible = true;
            }
        }
    }
}
