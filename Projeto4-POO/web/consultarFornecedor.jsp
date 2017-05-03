<%@page import="br.com.fatecpg.projeto.DatabaseFornecedor"%>
<%@page import="br.com.fatecpg.projeto.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("excluir") != null) {
        String cnpj = request.getParameter("cnpj");
        Fornecedor.excluir(cnpj);

    } else if (request.getParameter("Editar") != null) {
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");

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
                <div >
                    <div >
                        <h2>Fornecedores</h2>
                    </div>
                    <div >
                        <a href="index.html" >Home</a>
                        <a href="adicionaFornecedor.jsp">Novo Fornecedor</a>
                    </div>
                </div> <!-- /#top -->
                <hr />
                <div >
                    <div >
                        <div>
                            <table class="table table-bordered table-hover table-striped" >
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>Razão Social</th>
                                        <th>CNPJ</th>
                                        <th>Email</th>
                                        <th>Telefone</th>
                                        <th>Endereço</th>
                                        <th >Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (String key : DatabaseFornecedor.getFornecedor().keySet()) { %>
                                    <tr>
                                        <% Fornecedor f = DatabaseFornecedor.getFornecedor().get(key);%>
                                        <td><%= f.getNome()%></td>
                                        <td><%= f.getRazaosocial()%></td><!-- /COLOCAR O ID -->
                                        <td><%= f.getCnpj()%></td><!-- /COLOCAR O RG -->
                                        <td><%= f.getEmail()%></td>
                                        <td><%= f.getTelefone()%></td>
                                        <td><%= f.getEndereco()%></td>
                                        <td >
                                            <form method="POST"> 
                                                <input type="hidden" name="cnpj" value="<%= f.getCnpj()%>"/>
                                                <input type="submit" name="excluir" value="Excluir"/>
                                            </form>  

                                            <form action="editarFornecedor.jsp">
                                                <input type="hidden" name="nome" value="<%= f.getNome()%>"      /> 
                                                <input type="hidden" name="razao" value="<%= f.getRazaosocial()%>"      /> 
                                                <input type="hidden" name="cnpj" value="<%= f.getCnpj()%>"      /> 
                                                <input type="hidden" name="email" value="<%= f.getEmail()%>"      /> 
                                                <input type="hidden" name="fone" value="<%= f.getTelefone()%>"      /> 
                                                <input type="hidden" name="endereco" value="<%= f.getEndereco()%>"      /> 
                                                <input type="submit" name="editar" href="editarFornecedor.jsp" value="Editar" />
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
        </div> <!-- /#list -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="js/plugins/morris/raphael.min.js"></script>
        <script src="js/plugins/morris/morris.min.js"></script>
        <script src="js/plugins/morris/morris-data.js"></script>
    </body>
</html>