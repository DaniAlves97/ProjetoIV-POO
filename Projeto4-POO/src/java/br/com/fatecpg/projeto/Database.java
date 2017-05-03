package br.com.fatecpg.projeto;

import java.util.HashMap;

public class Database {
    
    private static HashMap<String, Cliente> clientes;
    public static HashMap<String, Cliente> getCliente() {
        if (clientes == null) {
            clientes = new HashMap<>();
            Cliente c1 = new Cliente("Fulano", "111.111.111-11", "11.111.111-1", "fulano@outlook.com", "11111111", "Av.lalala");
            clientes.put(c1.getCpf(), c1);
            c1 = new Cliente("Beltrano", "222.222.222-22", "22.222.222-2", "beltrano@gmail.com", "222222222", "Rua eiter 202");
            clientes.put(c1.getCpf(), c1);
            c1 = new Cliente("Ciclano", "333.333.333-33", "33.333.333-3", "ciclano@hotmail.com", "33333333", "Av. costa padre 333");
            clientes.put(c1.getCpf(), c1);
        }

        return clientes;
    }

}