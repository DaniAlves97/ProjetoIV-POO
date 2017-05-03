package br.com.fatecpg.projeto;

import java.util.HashMap;

public class DatabaseFornecedor {
    
    private static HashMap<String, Fornecedor> fornecedores;
    public static HashMap<String, Fornecedor> getFornecedor() {
        if (fornecedores == null) {
            fornecedores = new HashMap<>();
            Fornecedor f1 = new Fornecedor("LACTA", "LACTA", "11.111.111/0001-11", "lacta@gmail.com", "111111111", "Av. Presidente euviro");
            fornecedores.put(f1.getCnpj(), f1);
            f1 = new Fornecedor("C&C", "C&C", "22.222.222/0002-22", "cec@yahoo.com.br", "222222222", "Av. Marechal mallet");
            fornecedores.put(f1.getCnpj(), f1);
            f1 = new Fornecedor("Samsung", "Samsung", "33.333.333/0003-33", "samsung@hotmail.com", "111111111", "Rua Augusta");
            fornecedores.put(f1.getCnpj(), f1);
        }

        return fornecedores;
    }
}
