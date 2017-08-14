using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Data;


namespace Divan_0._01
{
    public partial class CadastroUsuarios : System.Web.UI.Page
    {
        ModelDataContext bd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsalvarUsuarioCad_Click(object sender, EventArgs e)
        {

            bd = new Model.ModelDataContext();

            try
            {
                USUARIO usuario = new USUARIO();

                string tipo = RadioButtonListTipoUsuario.SelectedItem.Text;

                if (tipo.Equals("Aluno")){
                    ALUNO aluno = new ALUNO();

                    aluno.NOME = TextBoxNome.Text;
                    aluno.SOBRENOME = TextBoxSobrenome.Text;
                    aluno.EMAIL = txtEmail.Value;
                    aluno.CELULAR = txtCelular.Value;
                    aluno.TELEFONE = txtTelefone.Value;
                    aluno.SENHA = txtPassword.Value;

                    usuario.EMAIL = txtEmail.Value;
                    usuario.SENHA = txtPassword.Value;
                    usuario.TIPO_USUARIO = RadioButtonListTipoUsuario.SelectedItem.Text;

                    bd.ALUNOs.InsertOnSubmit(aluno);
                    bd.USUARIOs.InsertOnSubmit(usuario);

                    bd.SubmitChanges();
                }
                else
                {
                    MOTORISTA motorista = new MOTORISTA();

                    motorista.NOME = TextBoxNome.Text;
                    motorista.SOBRENOME = TextBoxSobrenome.Text;
                    motorista.EMAIL = txtEmail.Value;
                    motorista.CELULAR = txtCelular.Value;
                    motorista.TELEFONE = txtTelefone.Value;
                    motorista.SENHA = txtPassword.Value;

                    usuario.EMAIL = txtEmail.Value;
                    usuario.SENHA = txtPassword.Value;
                    usuario.TIPO_USUARIO = RadioButtonListTipoUsuario.SelectedItem.Text;

                    bd.MOTORISTAs.InsertOnSubmit(motorista);
                    bd.USUARIOs.InsertOnSubmit(usuario);

                    bd.SubmitChanges();
                }
                          
            }
            catch (Exception)
            {

                throw;
            }


            Response.Redirect("CadastroInstituicoes.aspx");
        }


    }
}