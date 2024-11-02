import "MeuContador"

transaction {
    prepare(signer: &Account) {
        // Não precisamos fazer nada aqui, pois qualquer pessoa pode incrementar o contador
    }

    execute {
        // Chama a função do contrato para incrementar o contador
        MeuContador.increment()
    }
}
