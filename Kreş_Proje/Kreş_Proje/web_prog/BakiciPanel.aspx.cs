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
    public partial class BakiciPanel : System.Web.UI.Page
    {
        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlBakici.ItemCommand += new RepeaterCommandEventHandler(dlBakici_ItemCommand);

        }


        Metodlar metod = new Metodlar();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["BakiciTcNo"] = "98765432101";
            DataTable dtCocuk = metod.GetDataTable("Select * From Cocuk where BakiciTcNo='"+ Session["BakiciTcNo"].ToString() + "'");
            dlCocuk.DataSource = dtCocuk;
            dlCocuk.DataBind();

            DataTable dtBakici = metod.GetDataTable("Select * From Bakici where TcNo='" + Session["BakiciTcNo"].ToString() + "'");
            dlBakici.DataSource = dtBakici;
            dlBakici.DataBind();


        }

        protected void dlBakici_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {

            
            if (e.CommandName == "Guncelle")
            {

                String BakiciAdiGuncelle = txtBakiciAd.Text;
                String BakiciSoyadiGuncelle = txtBakiciSoyad.Text;
                String BakiciCepTelGuncelle = txtCepTel.Text;
                String BakiciAdresGuncelle = txtAdres.Text;
                String BakiciSifreGuncelle = txtSifre.Text;

                metod.cmd("Update Bakici set  Adi='" + BakiciAdiGuncelle + "',Soyadi='" + BakiciSoyadiGuncelle + "',CepTel='" + BakiciCepTelGuncelle + "',Adres='" + BakiciAdresGuncelle + "',Sifre='" + BakiciSifreGuncelle + "' where TcNo=" + e.CommandArgument.ToString());
                Response.Redirect("BakiciPanel.aspx");
            }
        }
    }
}