package br.com.fatecpg.projeto;

import java.util.HashMap;

public class DatabaseFornecedor {
    
    private static HashMap<String, Fornecedor> fornecedores;
    public static HashMap<String, Fornecedor> getFornecedor() {
        if (fornecedores == null) {
            fornecedores = new HashMap<>();
            Fornecedor f1 = new Fornecedor("FATEC", "FATEC", "11.111.111/0001-11", "fatec@fatec.com", "111111111", "Av.FATEC");
            fornecedores.put(f1.getCnpj(), f1);
            f1 = new Fornecedor("ETEC", "ETEC", "22.222.222/0002-22", "etec@etec.com", "222222222", "Av.ETEC");
            fornecedores.put(f1.getCnpj(), f1);
            f1 = new Fornecedor("POO", "POO", "33.333.333/0003-33", "poo@poo.com", "111111111", "Av.POO");
            fornecedores.put(f1.getCnpj(), f1);
        }

        return fornecedores;
    }

    static Object getFornecedor() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
}
