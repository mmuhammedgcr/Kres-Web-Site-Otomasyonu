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
    public partial class GelenMesaj : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();

        override protected void OnInit(EventArgs e)
        {
            base.OnInit(e);
            dlMesaj.ItemCommand += new RepeaterCommandEventHandler(dlMesaj_ItemCommand);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtMesaj = metod.GetDataTable("Select * From iletisim");
            dlMesaj.DataSource = dtMesaj;
            dlMesaj.DataBind();
        }

        protected void dlMesaj_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Sil")
            {
                metod.cmd("Delete From iletisim where ID='" + e.CommandArgument.ToString() + "'");
                Response.Redirect("GelenMesaj.aspx");
            }
           
        }
    }
}