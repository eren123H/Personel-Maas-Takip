using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme1
{
    public partial class MaaşVeriGirişFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

    

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Pers_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource2.InsertParameters["Maas_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Maas_Komisyonu"].DefaultValue = TextBox3.Text;
            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label1.Visible = true;
        }

        
    }
}