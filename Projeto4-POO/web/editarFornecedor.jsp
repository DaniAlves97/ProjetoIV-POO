<%-- 
    Document   : editarFornecedor
    Created on : 26/04/2017, 22:33:21
    Author     : Daniel
--%>

<%@page import="programaweb.Fornecedor"%>
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
        <title>Editar Fornecedor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body> 
        
        <br/>
        <div >
            <h3 >Atualizar Fornecedor</h3>
            <form action="consultarFornecedor.jsp" method="POST">
                <div >
                    <div >
                        <label for="campo1">NOME</label>
                        <input type="text" id="nomeFornecedor" name="nome" value="<%= nome%>" required>
                    </div>

                    <div >
                        <label for="campo2">RAZÃO SOCIAL</label>
                        <input type="text" id="razFornecedor" name="razao" value="<%= razaoSocial%>" required>
                    </div>

                    <div >
                        <label for="campo3">CNPJ</label>
                        <input type="text" id="cnpjFornecedor" name="cnpj" value="<%= cnpj%>" >
                    </div>

                    <div>
                        <label for="campo3">EMAIL</label>
                        <input type="text" id="emailCliente" name="email"value="<%= email%>"required>
                    </div>
                    <div >
                        <label for="campo3">TELEFONE</label>
                        <input type="text" id="telCliente" name="fone"value="<%= fone%>"required>
                    </div>
                    <div >
                        <label for="campo3">ENDEREÇO</label>
                        <input type="text" id="endereçoCliente" name="endereco" value="<%= endereco%>"required>

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

        
    </body>


</html>
