﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Divan_0._01.Login" %>

<!DOCTYPE html>
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
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/javascript.js" type="text/javascript"></script>


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
                <form id="form_login" runat="server">
                    <fieldset>
                        <h2>ENTRAR</h2>

                        <hr class="colorgraph" />
                        <div class="form-group">
                            <input type="email" runat="server" id="txtEmail" class="form-control input-lg" placeholder="E-mail" />
                        </div>
                        <div class="form-group">
                            <input type="password" runat="server" id="txtPassword" class="form-control input-lg" placeholder="Senha" />
                        </div>                        

                        <asp:RadioButtonList ID="RadioButtonListTipoUsuario_Login" runat="server" class="radio radio-danger">
                            <asp:ListItem Value="1">Aluno</asp:ListItem>
                            <asp:ListItem Value="2">Motorista</asp:ListItem>
                        </asp:RadioButtonList>


                        <span class="button-checkbox">
                            <button type="button" class="btn" data-color="info">Lembra Me</button>
                            <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden"/>
                            <a href="#" class="btn btn-link pull-right">Esqueceu a Senha?</a>
                        </span>

                        <hr class="colorgraph" />

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">                               
                                <asp:LinkButton ID="btnLogar" class="btn btn-lg btn-success btn-block" runat="server" OnClick="btnLogar_Click">
                                    <span class="glyphicon glyphicon-send"></span>
                                    Entrar
                                </asp:LinkButton>

                            </div>

                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <a href="registrar.jsp" type="button" class="btn btn-lg btn-primary btn-block">
                                    <span class="glyphicon glyphicon-list-alt"></span>
                                    Registrar
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
