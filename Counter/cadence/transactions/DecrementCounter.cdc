import "MeuContador"

transaction {
    prepare(signer: &Account) {
        // Não precisamos fazer nada aqui, pois qualquer pessoa pode decrementar o contador
    }

    execute {
        // Chama a função do contrato para decrementar o contador
        MeuContador.decrement()
    }
}
