<%-- 
    Document   : adicionaFornecedor
    Created on : 26/04/2017, 22:30:58
    Author     : Daniel
--%>

<%@page import="br.com.fatecpg.projeto.Fornecedor"%>

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

    }


%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Web Agenda</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body> 
        
        </br>
        <div>

            <h3>Adicionar Fornecedor</h3>
            <form action="consultarFornecedor.jsp" method="POST">
                <div >
                    <div>
                        <label for="campo1">NOME</label>
                        <input type="text" id="nomeFornecedor" name="nome" required>
                    </div>

                    <div >
                        <label for="campo2">RAZÃO SOCIAL</label>
                        <input type="text" id="razFornecedor" name="razao" required>
                    </div>

                    <div >
                        <label for="campo3">CNPJ</label>
                        <input type="text" id="cnpjFornecedor" name="cnpj" required>
                    </div>

                    <div >
                        <label for="campo3">EMAIL</label>
                        <input type="text" id="emailCliente" name="email"required>
                    </div>
                    <div >
                        <label for="campo3">TELEFONE</label>
                        <input type="text" id="telCliente" name="fone" required>
                    </div>
                    <div >
                        <label for="campo3">ENDEREÇO</label>
                        <input type="text" id="endereçoCliente" name="endereco" required>
                    </div>
                </div>
                <!-- area de campos do form -->
                <hr/>
                <div >
                    <div >

                        <form method="POST">
                            <input type="submit" name="incluir" value="Incluir" />

                        </form>
                          <a href="index.html" >Home</a>
                        <a href="consultarFornecedor.jsp" >Cancelar</a>
                    </div>
                </div>
            </form> 
        </div>

        
    </body>


</html>