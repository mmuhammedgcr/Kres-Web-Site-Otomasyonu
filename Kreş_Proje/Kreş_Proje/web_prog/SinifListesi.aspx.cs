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
    public partial class SinifListesi : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();

        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlSinif.ItemCommand += new RepeaterCommandEventHandler(dlSinif_ItemCommand);

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

            DataTable dtSinif = metod.GetDataTable("Select * From Sinif");
            dlSinif.DataSource = dtSinif;
            dlSinif.DataBind();
            
            
        }
        protected void dlSinif_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Sil")
            {
                metod.cmd("update Bakici set SinifID=null  where SinifID='" + e.CommandArgument.ToString() + "'");
                metod.cmd("Delete From Sinif where SinifID='"+ e.CommandArgument.ToString() + "'");
                Response.Redirect("SinifListesi.aspx");
               
            }
            if (e.CommandName == "Guncelle")
            {
                String SinifAdiGuncelle = txtSinifAdi.Text;
                metod.cmd("Update Sinif set SinifAdi='"+SinifAdiGuncelle+"'where SinifID='" + e.CommandArgument.ToString() + "'");
                Response.Redirect("SinifListesi.aspx");
            }
        }

        protected void btnSinifEkle2_Click(object sender, EventArgs e)
        {
            String SinifAdiEkle = txtSinifAdi.Text;
            metod.cmd("insert into Sinif(SinifAdi) values('" + SinifAdiEkle + "')");
            Response.Redirect("SinifListesi.aspx");
        }
    }
}