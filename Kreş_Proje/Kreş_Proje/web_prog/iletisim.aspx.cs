using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_prog
{
    public partial class iletisim : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
           
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            metod.cmd("insert into iletisim(Ad,Soyad,email,mesaj) values ('" + txtAd.Text + "','"+txtSoyad.Text+"','"+txtMail.Text+"','"+txtmesaj.Text+"')");
            Response.Redirect("iletisim.aspx");
        }
    }
}