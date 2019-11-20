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
    public partial class VeliListesi : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();

        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlVeli.ItemCommand += new RepeaterCommandEventHandler(dlVeli_ItemCommand);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtVeli = metod.GetDataTable("Select * From Veli");
            dlVeli.DataSource = dtVeli;
            dlVeli.DataBind();
        }

        protected void dlVeli_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Sil")
            {
                metod.cmd("Delete From Cocuk where VeliTcNo='" + e.CommandArgument.ToString() + "'");
                metod.cmd("Delete From Veli where TcNo='" + e.CommandArgument.ToString() + "'");
                Response.Redirect("VeliListesi.aspx");
                // Daha sonra veri tabanı işlemlerini Id ile yaptırabilirsiniz.
            }
            if (e.CommandName == "Guncelle")
            {

                String VeliAdiGuncelle = txtVeliAd.Text;
                String VeliSoyadiGuncelle = txtVeliSoyad.Text;
                String VeliCepTelGuncelle = txtVeliCepTel.Text;
                String VeliAdresGuncelle = txtVeliAdres.Text;
                String VeliMedeniHalGuncelle = txtMedeniHal.Text;
                String VeliDogumTarihiGuncelle = txtVeliDogumTarih.Text;
                String VeliSifreGuncelle = txtVeliSifre.Text;
                metod.cmd("Update Veli set Adi='" + VeliAdiGuncelle + "',Soyadi='" + VeliSoyadiGuncelle + "',CepTel='" + VeliCepTelGuncelle + "',Adres='" + VeliAdresGuncelle + "',MedeniHali='"+ VeliMedeniHalGuncelle + "',DogumTarihi='"+ VeliDogumTarihiGuncelle + "',Sifre='" + VeliSifreGuncelle + "' where TcNo=" + e.CommandArgument.ToString() + "'");
                Response.Redirect("VeliListesi.aspx");
            }
        }

        protected void btnVeliEkle_Click(object sender, EventArgs e)
        {
            String VeliTcEkle = txtVeliTC.Text;
            String VeliAdiEkle = txtVeliAd.Text;
            String VeliSoyadiEkle = txtVeliSoyad.Text;
            String VeliCepTelEkle = txtVeliCepTel.Text;
            String VeliAdresEkle = txtVeliAdres.Text;
            String VeliMedeniHalEkle = txtMedeniHal.Text;
            String VeliDogumTarihiEkle = txtVeliDogumTarih.Text;
            String VeliCinsiyetEkle = txtVeliCinsiyet.Text;
            String VeliSifreEkle = txtVeliSifre.Text;
            metod.cmd("insert into Veli (TcNo,Adi,Soyadi,CepTel,Adres,MedeniHali,Cinsiyet,Sifre,DogumTarihi) values('" + VeliTcEkle + "','" + VeliAdiEkle + "','" + VeliSoyadiEkle + "','" + VeliCepTelEkle + "','" + VeliAdresEkle + "','" + VeliMedeniHalEkle + "','"+ VeliCinsiyetEkle  + "','" + VeliSifreEkle + "','" + VeliDogumTarihiEkle + "')");
            Response.Redirect("VeliListesi.aspx");
        }
    }
}