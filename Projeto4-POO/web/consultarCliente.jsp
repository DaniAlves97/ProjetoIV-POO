<%-- 
    Document   : consulCliente
    Created on : 26/04/2017, 22:28:07
    Author     : Daniel
--%>

<%@page import="br.com.fatecpg.projeto.Database"%>
<%@page import="br.com.fatecpg.projeto.DatabaseFornecedor"%>
<%@page import="br.com.fatecpg.projeto.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("incluir") != null) {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereço = request.getParameter("endereco");

        Cliente c = new Cliente(nome, cpf, rg, email, fone, endereço);

        c.gravar();
    } else if (request.getParameter("excluir") != null) {
        String cpf = request.getParameter("cpf");
        Cliente.excluir(cpf);

    } else if (request.getParameter("Editar") != null) {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereço = request.getParameter("endereco");

        Cliente c = new Cliente(nome, cpf, rg, email, fone, endereço);

        Cliente.editar(cpf, c);

    }

%>
<!DOCTYPE html>

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
                <a class="navbar-brand" href="index.html">TP -POO</a>
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
                                <i class="fa fa-user"></i> Consultar Clientes
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Clientes</h2>
                        <a href="adicionaCliente.jsp" >Cadastrar Cliente</a>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>CPF</th>
                                        <th>RG</th>
                                        <th>Email</th>
                                        <th>Telefone</th>
                                        <th>Endereço</th>
                                        <th >Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (String key : Database.getCliente().keySet()) { %>
                                    <tr>
                                    <% Cliente c = Database.getCliente().get(key);%>
                                        <td><%= c.getNome()%></td>
                                        <td><%= c.getCpf()%></td><!-- /COLOCAR O ID -->
                                        <td><%= c.getRg()%></td><!-- /COLOCAR O RG -->
                                        <td><%= c.getEmail()%></td>
                                        <td><%= c.getTelefone()%></td>
                                        <td><%= c.getEndereco()%></td>
                                        <td>
                                        <form method="POST"> 
                                            <input type="hidden" name="cpf" value="<%= c.getCpf()%>"/>
                                            <input type="submit" name="excluir" value="Excluir"/>   
                                        </form>  
                                        <form action="editarCliente.jsp" >
                                            <input type="hidden" name="nome" value="<%= c.getNome()%>"      /> 
                                            <input type="hidden" name="cpf" value="<%= c.getCpf()%>"      /> 
                                            <input type="hidden" name="rg" value="<%= c.getRg()%>"      /> 
                                            <input type="hidden" name="email" value="<%= c.getEmail()%>"      /> 
                                            <input type="hidden" name="fone" value="<%= c.getTelefone()%>"      /> 
                                            <input type="hidden" name="endereco" value="<%= c.getEndereco()%>"      /> 
                                            <input type="submit" name="editar" href="editarCliente.jsp" value="Editar" />
                                        </form>
                                        </td>
                                    </tr>
                                <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


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
