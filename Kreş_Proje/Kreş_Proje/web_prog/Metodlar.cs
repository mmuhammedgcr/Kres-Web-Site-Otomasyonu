using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Fonksiyon
/// </summary>
public class Metodlar
{
	public Metodlar()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=KRES;Integrated Security=True");
        baglanti.Open();
        return (baglanti);
    }

    public SqlConnection close()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=KRES;Integrated Security=True");
        baglanti.Close();
        return (baglanti);
    }

    public int cmd(string sqlcumle)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand sorgu = new SqlCommand(sqlcumle, baglan);
        int sonuc = 0;

        try
        {
            sonuc = sorgu.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message + " (" + sqlcumle + ")");
        }
        sorgu.Dispose();
        baglan.Close();
        baglan.Dispose();
        return (sonuc);
    }

    public DataTable GetDataTable(string sql)
    {
        SqlConnection baglanti = this.baglan();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, baglanti);
        DataTable dt = new DataTable();
        try
        {
            adapter.Fill(dt);
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message + " (" + sql + ")");
        }
        adapter.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return dt;
    }

    


    //public DataRow GetDataRow(string sql)
    //{
    //    DataTable table = GetDataTable(sql);
    //    if (table.Rows.Count == 0) return null;
    //    return table.Rows[0];
    //}

    //public string GetDataCell(string sql)
    //{
    //    DataTable table = GetDataTable(sql);
    //    if (table.Rows.Count == 0) return null;
    //    return table.Rows[0][0].ToString();
    //}
    //public static string Vitrin(string Vitrin)
    //{
    //    string deger = "";

    //    if (Vitrin == "1")
    //        deger = "Evet";
    //    else
    //        deger = "Hayır";
    //    return deger;
    //}

    //public static string Vitrin2(string Vitrin2)
    //{
    //    string deger = "";

    //    if (Vitrin2 == "1")
    //        deger = "yok.png";
    //    else
    //        deger = "onay.png";
    //    return deger;
    //}
}