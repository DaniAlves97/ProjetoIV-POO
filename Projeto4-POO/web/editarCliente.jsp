<%-- 
    Document   : editarCliente
    Created on : 26/04/2017, 22:31:50
    Author     : Daniel
--%>

<%@page import="programaweb.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String rg = request.getParameter("rg");
    String email = request.getParameter("email");
    String fone = request.getParameter("fone");
    String endereco = request.getParameter("endereco");
    if (request.getParameter("Editar") != null) {
        nome = request.getParameter("nome");
        cpf = request.getParameter("cpf");
        rg = request.getParameter("rg");
        email = request.getParameter("email");
        fone = request.getParameter("fone");
        endereco = request.getParameter("endereco");

        Cliente c = new Cliente(nome, cpf, rg, email, fone, endereco);

        Cliente.editar(cpf, c);
    }

%>

<!DOCTYPE html>
<html lang="en">

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
                    <li class="active">
                        <a href="consultarCliente.jsp"><i class="fa fa-fw fa-user"></i> Clientes</a>
                    </li>
                    <li>
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
                                <i class="fa fa-user"></i> Editar Clientes
                            </li>
                        </ol>
                    </div>
                </div>
                <form action="consultarCliente.jsp" method="POST">
                <div class="row">
                    
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="campo1">NOME</label>
                            <input class="form-control" type="text" id="nome" name="nome" value="<%= nome%>" required>
                        </div>
                        <div class="form-group">
                            <label for="campo2">CFP</label>
                            <input class="form-control" type="text" id="cpf" name="cpf" value="<%= cpf%>">
                        </div>
                        <div class="form-group">
                            <label for="campo3">RG</label>
                        <input class="form-control" type="text" id="rg" name="rg" value="<%= rg%>" required>
                        </div>
                        <div class="form-group">
                            <label for="campo4">EMAIL</label>
                        <input class="form-control" type="text" id="rg" name="email" value="<%= email%>" required>
                        </div>
                        <div class="form-group">
                            <label for="campo5">TELEFONE</label>
                        <input class="form-control" type="text" id="fone" name="fone" value="<%= fone%>  " required>
                        </div>
                        <div class="form-group">
                            <label for="campo6">ENDEREÇO</label>
                        <input  class="form-control"type="text" id="endereco" name="endereco" value="<%= endereco%>" required>
                        </div>
                        <hr/>
                        <div >
                            <div>                                
                                <button type="submit" name="Editar" >Salvar</button>
                                <a href="consultarCliente.jsp" >Cancelar</a>
                            </div>
                        </div>
                    </div>
                </div>
                </form> 
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

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