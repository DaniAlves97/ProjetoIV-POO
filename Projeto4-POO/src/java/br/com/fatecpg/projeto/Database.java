package br.com.fatecpg.projeto;

import java.util.HashMap;

public class Database {
    
    private static HashMap<String, Cliente> clientes;
    public static HashMap<String, Cliente> getCliente() {
        if (clientes == null) {
            clientes = new HashMap<>();
            Cliente c1 = new Cliente("Fulano", "111.111.111-11", "11.111.111-1", "fulano@fulano.com", "11111111", "Av.Fulano");
            clientes.put(c1.getCpf(), c1);
            c1 = new Cliente("Beltrano", "222.222.222-22", "22.222.222-2", "beltrano@beltrno.com", "222222222", "Rua Beltrano 202");
            clientes.put(c1.getCpf(), c1);
            c1 = new Cliente("Ciclano", "333.333.333-33", "33.333.333-3", "ciclano@ciclano.com", "33333333", "Av. Ciclano 333");
            clientes.put(c1.getCpf(), c1);
        }

        return clientes;
    }

    static Object getCliente() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
}
