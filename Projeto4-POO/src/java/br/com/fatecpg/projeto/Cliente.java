package br.com.fatecpg.projeto;

public class Cliente {
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String telefone;
    private String endereco;

    public Cliente() {
    }

    public Cliente(String nome, String cpf, String rg, String email, String telefone, String endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
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

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
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
        Database.getCliente().put(getCpf(), this);
    }

    public static void editar(String cpf, Cliente c) {
        Database.getCliente().replace(cpf, c);
        
    }

    public static void excluir(String cpf) {
        Database.getCliente().remove(cpf);
    }
}
