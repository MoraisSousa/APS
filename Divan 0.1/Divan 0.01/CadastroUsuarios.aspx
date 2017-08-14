<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuarios.aspx.cs" Inherits="Divan_0._01.CadastroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
</head>
<body>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/javascript.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap-notify.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtCelular').mask('(00) 00000-0000');
        });

        $(document).ready(function () {
            $('#txtTelefone').mask('(00) 0000-0000');
        });
        function confirmacao() {

            $.notify({
                // options
                message: 'Cadastro realizado com sucesso'
            }, {
                // settings
                type: 'success'
            });
            return true;
        }
    </script>

    <div class="navbar-wrapper">
        <div class="container-fluid">
            <nav class="navbar navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"></a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index.jsp" class="">Home</a></li>
                            <li class=" dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Departments <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View Departments</a>
                                    </li>
                                    <li><a href="#">Add New</a></li>
                                </ul>
                            </li>
                            <li><a href="addnew.html">Add New</a></li>
                            <li class=" dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Managers <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">View Managers</a></li>
                                    <li><a href="#">Add New</a></li>
                                </ul>
                            </li>
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Staff <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">View Staff</a></li>
                                    <li><a href="#">Add New</a></li>
                                    <li><a href="#">Bulk Upload</a></li>
                                </ul>
                            </li>
                            <li class=" down"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">HR <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Change Time Entry</a></li>
                                    <li><a href="#">Report</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav pull-right">
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Change Password</a></li>
                                    <li><a href="#">My Profile</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="#">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- ================ INICIA FORMULARIO DE LOGIN ============================================================== -->

    <div class="container">
        <div class="row" style="margin-top: 60px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form id="form_cadastro" runat="server">
                    <fieldset>
                        <h2>REGISTAR</h2>
                        <hr class="colorgraph" />
                        <div class="form-group">
                            <%--<input type="text" runat="server" id="txtnome" required="required" class="form-control input-lg" placeholder="Nome" />--%>
                            <asp:TextBox ID="TextBoxNome" runat="server"  CssClass="form-control input-lg" placeholder="Nome"></asp:TextBox>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1"
                                runat="server"
                                ErrorMessage="Somente Letras"
                                ControlToValidate="TextBoxNome"
                                ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </div>
                        <div class="form-group">
                            <%--<input type="text" runat="server" id="txtSobrenome" required="required" class="form-control input-lg" placeholder="Sobrenome" />--%>
                            <asp:TextBox ID="TextBoxSobrenome" runat="server" CssClass="form-control input-lg"  placeholder="Sobrenome"></asp:TextBox>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator2"
                                runat="server"
                                ErrorMessage="Somente Letras"
                                ControlToValidate="TextBoxSobrenome"
                                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <input type="email" runat="server" id="txtEmail" required="required" class="form-control input-lg" placeholder="E-mail" />
                        </div>
                        <div class="form-group">
                            <input type="tel" runat="server" id="txtCelular" required="required" class="form-control input-lg" placeholder="DDD/Celular" />
                        </div>
                        <div class="form-group">
                            <input type="tel" runat="server" id="txtTelefone" class="form-control input-lg" placeholder="DDD/Tetefone" />
                        </div>
                        <div class="form-group">
                            <input type="password" runat="server" id="txtPassword" required="required" class="form-control input-lg" placeholder="Senha" onchange="form.confirmPassword.pattern = this.value;" />
                        </div>
                        <div class="form-group">
                            <input type="password" runat="server" id="txtConfirmPassword" required="required" class="form-control input-lg" placeholder="Confirmar Senha" />
                        </div>

                     
                        <asp:RadioButtonList ID="RadioButtonListTipoUsuario" runat="server" class="radio radio-danger">
                            <asp:ListItem Value="1">Aluno</asp:ListItem>
                            <asp:ListItem Value="2">Motorista</asp:ListItem>
                        </asp:RadioButtonList>

                        <hr class="colorgraph" />
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">                        
                                <asp:LinkButton ID="btnsalvarUsuarioCad" class="btn btn-lg btn-success btn-block" runat="server" OnClick="btnsalvarUsuarioCad_Click">
                                    <span class="glyphicon glyphicon-remove"></span>
                                    Confirmar                                 
                                </asp:LinkButton>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <a href="login.jsp" type="button" class="btn btn-lg btn-danger btn-block">
                                    <span class="glyphicon glyphicon-remove"></span>
                                    Cancelar                                    
                                </a>
                            </div>
                            
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

