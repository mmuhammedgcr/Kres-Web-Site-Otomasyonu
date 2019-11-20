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
    public partial class BakiciListesi : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();

        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlBakici.ItemCommand += new RepeaterCommandEventHandler(dlBakici_ItemCommand);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtBakici = metod.GetDataTable("Select * From Bakici");
            dlBakici.DataSource = dtBakici;
            dlBakici.DataBind();
        }

        protected void dlBakici_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            
            if (e.CommandName == "Sil")
            {
                metod.cmd("Update Cocuk Set BakiciTcNo=null where BakiciTcNo=" + e.CommandArgument.ToString() + "'");
                metod.cmd("Delete From Bakici where TcNo='" + e.CommandArgument.ToString()+"'");
                Response.Redirect("BakiciListesi.aspx");
                
            }
            if (e.CommandName == "Guncelle")
            {
               
                String BakiciAdiGuncelle = txtBakiciAd.Text;
                String BakiciSoyadiGuncelle = txtBakiciSoyad.Text;
                String BakiciCepTelGuncelle = txtCepTel.Text;
                String BakiciAdresGuncelle = txtAdres.Text;
                String BakiciSifreGuncelle = txtSifre.Text;
                metod.cmd("Update Bakici set  Adi='" + BakiciAdiGuncelle + "',Soyadi='" + BakiciSoyadiGuncelle + "',CepTel='" + BakiciCepTelGuncelle + "',Adres='" + BakiciAdresGuncelle + "',Sifre='" + BakiciSifreGuncelle + "' where TcNo=" + e.CommandArgument.ToString() + "'");
                Response.Redirect("BakiciListesi.aspx");
            }
        }

        protected void btnBakiciEkle_Click(object sender, EventArgs e)
        {
            String BakiciTcEkle = txtBakiciTC.Text;
            String BakiciAdiEkle = txtBakiciAd.Text;
            String BakiciSoyadiEkle = txtBakiciSoyad.Text;
            String BakiciCepTelEkle = txtCepTel.Text;
            String BakiciAdresEkle = txtAdres.Text;
            String BakiciSifreEkle = txtSifre.Text;
            metod.cmd("insert into Bakici(TcNo,Adi,Soyadi,CepTel,Adres,Sifre) values('" +BakiciTcEkle + "','"+BakiciAdiEkle+"','"+BakiciSoyadiEkle+ "','"+BakiciCepTelEkle+ "','"+BakiciAdresEkle+ "','"+BakiciSifreEkle+"')");
            Response.Redirect("BakiciListesi.aspx");
        }
    }
}