<%@page import="br.com.fatecpg.projeto.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String nome = request.getParameter("nome");
    String razaoSocial = request.getParameter("razao");
    String cnpj = request.getParameter("cnpj");
    String email = request.getParameter("email");
    String fone = request.getParameter("fone");
    String endereco = request.getParameter("endereco");
    if (request.getParameter("Editar") != null) {
        nome = request.getParameter("nome");
        razaoSocial = request.getParameter("razao");
        cnpj = request.getParameter("cnpj");
        email = request.getParameter("email");
        fone = request.getParameter("fone");
        endereco = request.getParameter("endereco");

        Fornecedor f = new Fornecedor(nome, razaoSocial, cnpj, email, fone, endereco);

        Fornecedor.editar(cnpj, f);
    }

%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>TP - POO Agenda</title>
        <!-- Bootstrap Core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="assets/css/sb-admin.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="css/plugins/morris.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body> 

        <br/>
        <div id="wrapper">
            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">TP - POO</a>
                </div>
                <!-- Top Menu Items -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li >
                            <a href="consultarCliente.jsp"><i class="fa fa-fw fa-user"></i> Clientes</a>
                        </li>
                        <li class="active">
                            <a href="fornecedor.jsp"><i class="fa fa-fw fa-truck"></i> Fornecedores</a>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
            <div id="page-wrapper">

                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Agenda <small> Fornecedores | Clientes</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-user"></i> Editar Fornecedores
                                </li>
                            </ol>
                        </div>
                    </div>
                    <form action="consultarFornecedor.jsp" method="POST">
                        <div >
                            <div >
                                <label for="campo1">NOME</label>
                                <input class="form-control" type="text" id="nomeFornecedor" name="nome" value="<%= nome%>" required>
                            </div>
                            <div >
                                <label for="campo2">RAZÃO SOCIAL</label>
                                <input class="form-control" type="text" id="razFornecedor" name="razao" value="<%= razaoSocial%>" required>
                            </div>
                            <div >
                                <label for="campo3">CNPJ</label>
                                <input class="form-control" type="text" id="cnpjFornecedor" name="cnpj" value="<%= cnpj%>" >
                            </div>
                            <div>
                                <label for="campo3">EMAIL</label>
                                <input class="form-control" type="text" id="emailCliente" name="email"value="<%= email%>"required>
                            </div>
                            <div >
                                <label for="campo3">TELEFONE</label>
                                <input class="form-control" type="text" id="telCliente" name="fone"value="<%= fone%>"required>
                            </div>
                            <div >
                                <label for="campo3">ENDEREÇO</label>
                                <input class="form-control" type="text" id="endereçoCliente" name="endereco" value="<%= endereco%>"required>

                            </div>
                        </div>
                        <!-- area de campos do form -->
                        <hr/>
                        <div >
                            <div>
                                <button type="submit" name="Editar" >Salvar</button>
                                <a href="index.html" >Home</a>
                                <a href="consultarFornecedor.jsp" >Cancelar</a>
                            </div>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Morris Charts JavaScript -->
        <script src="js/plugins/morris/raphael.min.js"></script>
        <script src="js/plugins/morris/morris.min.js"></script>
        <script src="js/plugins/morris/morris-data.js"></script>
    </body>
</html>
