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

    public partial class CocukListesi : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();
        
        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlCocuk.ItemCommand += new RepeaterCommandEventHandler(dlCocuk_ItemCommand);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtCocuk = metod.GetDataTable("Select * From Cocuk");
            dlCocuk.DataSource = dtCocuk;
            dlCocuk.DataBind();

            metod.baglan();
            SqlCommand sorgu = new SqlCommand("Select * From Bakici", metod.baglan());
            SqlDataReader dr = sorgu.ExecuteReader();
            while(dr.Read()){
                ListItem litem = new ListItem();
                litem.Text = dr["Adi"].ToString() + " " + dr["Soyadi"].ToString();
                litem.Value = dr["TcNo"].ToString();
                DropDownList1.Items.Add(litem);
            }
            dr.Close();
            metod.close();

        }

        protected void dlCocuk_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Sil")
            {
                
                metod.cmd("Delete From Cocuk where Tcno='" + e.CommandArgument.ToString() + "'");
                Response.Redirect("CocukListesi.aspx");
               
            }
            if (e.CommandName == "Guncelle")
            {
                
                String CocukAdi = txtCocukAd.Text;
                String CocukSoyadi = txtCocukSoyad.Text;
                String CocukSaglikDurumu = txtSaglik.Text;
                String CocukCinsiyet = txtCocukCinsiyet.Text;
                String CocukBoy = txtCocukBoy.Text;
                String CocukKilo = txtCocukKilo.Text;
                String CocukAciklama = txtCocukAciklama.Text;
                String CocukDogumTarihi = txtCocukDogumTarih.Text;
                String BakiciTcNo = DropDownList1.SelectedValue.ToString();


                metod.cmd("Update Cocuk set Adi='" + CocukAdi + "',Soyadi='" + CocukSoyadi + "',DogumTarihi='" + CocukDogumTarihi + "',SaglikDurumu='" + CocukSaglikDurumu + "',Cinsiyet='" + CocukCinsiyet + "',Boy='" + CocukBoy + "',Kilo='" + CocukKilo + "',Aciklama='" + CocukAciklama + "',BakiciTcNo='" + CocukAciklama + "' where Tcno='" + e.CommandArgument.ToString() + "'");
                Response.Redirect("CocukListesi.aspx");
            }
        }
        protected void btnCocukEkle_Click(object sender, EventArgs e)
        {

            String CocukTcNo = txtCocukTc.Text;
            String CocukVeliTcNo = txtVeliTc.Text;
            String CocukAdi = txtCocukAd.Text;
            String CocukSoyadi = txtCocukSoyad.Text;
            String CocukDogumTarihi = txtCocukDogumTarih.Text;
            String CocukSaglikDurumu = txtSaglik.Text;
            String CocukCinsiyet = txtCocukCinsiyet.Text;
            String CocukBoy = txtCocukBoy.Text;
            String CocukKilo = txtCocukKilo.Text;
            String CocukAciklama = txtCocukAciklama.Text;
            String BakiciTcNo = DropDownList1.SelectedValue.ToString();
            metod.cmd("insert into Cocuk(Tcno,VeliTcNo,Adi,Soyadi,DogumTarihi,SaglikDurumu,Cinsiyet,Boyu,Kilosu,Aciklama,BakiciTcNo) values('" + CocukTcNo + "','" + CocukVeliTcNo + "','" + CocukAdi + "','" + CocukSoyadi + "','" + CocukDogumTarihi + "','" + CocukSaglikDurumu + "','" + CocukCinsiyet + "','" + CocukBoy + "','" + CocukKilo + "','" + CocukAciklama + "','" + BakiciTcNo + "')");
            Response.Redirect("CocukListesi.aspx");
        }

    }
}