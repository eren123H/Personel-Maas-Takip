using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme1
{
    public partial class BölümVeriGirişi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Bolum_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Bolum_Tel"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Yonetici_ID"].DefaultValue = TextBox3.Text;
            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Bölüm Verisi Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label1.Visible = true;
        }
    }
}