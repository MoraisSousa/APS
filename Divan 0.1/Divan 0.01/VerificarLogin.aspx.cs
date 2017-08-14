using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divan_0._01
{
    public partial class VerificarLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].Equals("Aluno"))
            {
                Response.Redirect("PagAluno.aspx");
            }
            else
            {
                Response.Redirect("PagMotorista.aspx");
            }
        }
    }
}