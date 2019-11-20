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
    public partial class VeliPanel : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();

        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlVeli.ItemCommand += new RepeaterCommandEventHandler(dlVeli_ItemCommand);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["VeliTcNo"] = "22334455667";
            DataTable dtVeli = metod.GetDataTable("Select * From Veli where TcNo='"+Session["VeliTcNo"]+"'");
            dlVeli.DataSource = dtVeli;
            dlVeli.DataBind();

            DataTable dtCocuk = metod.GetDataTable("Select * From Cocuk where VeliTcNo='" + Session["VeliTcNo"].ToString() + "'");
            dlCocuk.DataSource = dtCocuk;
            dlCocuk.DataBind();

        }

        protected void dlVeli_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            
            if (e.CommandName == "Guncelle")
            {

                String VeliAdiGuncelle = txtVeliAd.Text;
                String VeliSoyadiGuncelle = txtVeliSoyad.Text;
                String VeliCepTelGuncelle = txtVeliCepTel.Text;
                String VeliAdresGuncelle = txtVeliAdres.Text;
                String VeliMedeniHalGuncelle = txtMedeniHal.Text;
                String VeliDogumTarihiGuncelle = txtVeliDogumTarih.Text;
                String VeliSifreGuncelle = txtVeliSifre.Text;
                metod.cmd("Update Veli set Adi='" + VeliAdiGuncelle + "',Soyadi='" + VeliSoyadiGuncelle + "',CepTel='" + VeliCepTelGuncelle + "',Adres='" + VeliAdresGuncelle + "',MedeniHali='" + VeliMedeniHalGuncelle + "',DogumTarihi='" + VeliDogumTarihiGuncelle + "',Sifre='" + VeliSifreGuncelle + "' where TcNo=" + e.CommandArgument.ToString() + "'");
                Response.Redirect("VeliPanel.aspx");
            }
        }
    }
}