<%-- 
    Document   : consultarFornecedor
    Created on : 26/04/2017, 22:29:15
    Author     : Daniel
--%>

<%@page import="programaweb.BancoFornecedor"%>
<%@page import="programaweb.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("incluir") != null) {
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");

        Fornecedor f = new Fornecedor(nome, razaoSocial, cnpj, email, fone, endereco);

        f.gravar();
    } else if (request.getParameter("excluir") != null) {
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
        <title>Consultar Fornecedor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body> 
        
        <br/>
        <div > <br/><br/>
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
                        <table >
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





                                <% for (String key : BancoFornecedor.getFornecedor().keySet()) { %>
                                <tr>
                                    <% Fornecedor f = BancoFornecedor.getFornecedor().get(key);%>


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

                </div> <!-- /#list -->


                </body>


                </html>