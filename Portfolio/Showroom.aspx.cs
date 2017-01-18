using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Portfolio_Showroom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ReadShowroom();
    }

    protected void ReadShowroom()
    {
        String showroom_file = Request.MapPath("~/Portfolio/Showroom.html");
        String showroom = Utility.ReadFile(showroom_file);
        lt_showroom.Text = showroom;
    }
}