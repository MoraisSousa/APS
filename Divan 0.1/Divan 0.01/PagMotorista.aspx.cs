using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divan_0._01
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"] != null)
            {
                Response.Write("Bem Vindo: " + Session["usuario"]);
            } else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}