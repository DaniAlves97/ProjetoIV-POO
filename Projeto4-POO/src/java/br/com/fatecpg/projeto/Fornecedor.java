package br.com.fatecpg.projeto;

public class Fornecedor {
    private String nome;
    private String razaosocial;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;

    public Fornecedor() {

    }

    public Fornecedor(String nome, String razaosocial, String cnpj, String email, String telefone, String endereco) {
        this.nome = nome;
        this.razaosocial = razaosocial;
        this.cnpj = cnpj;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaosocial() {
        return razaosocial;
    }

    public void setRazaosocial(String razaosocial) {
        this.razaosocial = razaosocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String Endereco) {
        this.endereco = endereco;
    }

    public void gravar() {
        DatabaseFornecedor.getFornecedor().put(getCnpj(), this);
    }

    public static void editar(String cpf, Fornecedor c) {
        DatabaseFornecedor.getFornecedor().replace(cpf, c);
    }

    public static void excluir(String cnpj) {
        DatabaseFornecedor.getFornecedor().remove(cnpj);
    }
}
