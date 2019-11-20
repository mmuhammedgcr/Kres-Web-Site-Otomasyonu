using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace web_prog
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtBakici = metod.GetDataTable("Select top(3)* From Bakici");
            dlBakici.DataSource = dtBakici;
            dlBakici.DataBind();

            DataTable dtSinif = metod.GetDataTable("Select top(3)* From Sinif");
            dlSinif.DataSource = dtSinif;
            dlSinif.DataBind();

            DataTable dtVeli = metod.GetDataTable("Select top(3)* From Veli");
            dlVeli.DataSource = dtVeli;
            dlVeli.DataBind();

            DataTable dtCocuk = metod.GetDataTable("Select top(3)* From Cocuk");
            dlCocuk.DataSource = dtCocuk;
            dlCocuk.DataBind();

        }
    }
}