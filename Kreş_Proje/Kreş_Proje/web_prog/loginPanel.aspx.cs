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
    public partial class loginPanel : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection bagla = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=KRES;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * From Bakici where TcNo=@TcNo and Sifre=@Sifre", bagla);
            //SqlCommand cmd = new SqlCommand("Select * From Bakici where TcNo='"+txtTcNo.Text+"' and Sifre='"+txtSifre.Text+"'", bagla);
            cmd.Parameters.AddWithValue("@TcNo", txtTcNo.Text);
            cmd.Parameters.AddWithValue("@Sifre", txtSifre.Text);
            bagla.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();

            reader.Read();
            if (reader.HasRows)
            {
                Session["BakiciTcNo"] = reader["TcNo"].ToString();
               
                reader.Close();
                bagla.Close();
                Response.Redirect("BakiciPanel.aspx");
            }
            else
            {
                reader.Close();
                bagla.Close();
                SqlConnection bagla2 = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=KRES;Integrated Security=True");
                SqlCommand cmd2 = new SqlCommand("Select * From Veli where TcNo=@TcNo2 and Sifre=@Sifre2", bagla2);
                
                cmd2.Parameters.AddWithValue("@TcNo2", txtTcNo.Text);
                cmd2.Parameters.AddWithValue("@Sifre2", txtSifre.Text);
                bagla2.Open();
                SqlDataReader reader2;
                reader2 = cmd2.ExecuteReader();
                if (reader2.HasRows)
                {
                    Session["VeliTcNo"] = reader2["TcNo"].ToString();
                    
                    reader2.Close();
                    bagla2.Close();
                    Response.Redirect("VeliPanel.aspx");
                }
                else
                {
                    reader2.Close();
                    bagla2.Close();
                    SqlConnection bagla3 = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=KRES;Integrated Security=True");
                    SqlCommand cmd3 = new SqlCommand("Select * From Kullanicilar where TcNo=@TcNo3 and Sifre=@Sifre3", bagla3);

                    cmd3.Parameters.AddWithValue("@TcNo3", txtTcNo.Text);
                    cmd3.Parameters.AddWithValue("@Sifre3", txtSifre.Text);
                    bagla3.Open();
                    SqlDataReader reader3;
                    reader3 = cmd3.ExecuteReader();
                    if (reader3.HasRows)
                    {
                        

                        reader3.Close();
                        bagla3.Close();
                        Response.Redirect("AdminDefault.aspx");
                    }
                    else
                    {
                        reader3.Close();
                        bagla3.Close();
                        Response.Write("Kullanıcı Adı veya Şifre Hatalı");

                    }
                }

            }
            
            
        }
        


    }
}