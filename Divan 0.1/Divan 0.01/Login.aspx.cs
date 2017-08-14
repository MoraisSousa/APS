using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Model;

namespace Divan_0._01
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Model.Properties.Settings.DIVANConnectionString"].ToString());
            //con.Open();
            try
            {
                //string tipoUser = RadioButtonListTipoUsuario_Login.SelectedItem.Value;

                DataSet1TableAdapters.USUARIOTableAdapter obj = new DataSet1TableAdapters.USUARIOTableAdapter();
                String EmailSenha = obj.login(txtEmail.Value, txtPassword.Value);
                //String TipoUsuario = obj.loginTipoUsuario(RadioButtonListTipoUsuario_Login.SelectedItem.Value);

                if (EmailSenha != null)
                {
                    //if (TipoUsuario != null)
                    //{
                        Session["usuario"] = EmailSenha;
                        Response.Redirect("VerificarLogin.aspx");
                    //Response.Redirect("PagAluno.aspx");
                    //} else
                    //{
                    //    Response.Redirect("PagMotorista.aspx");
                    //}                 

                } 
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        private static string GetTipoUser(string tipoUser)
        {
            return tipoUser;
        }
    }
}