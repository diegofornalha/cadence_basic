import HelloWorld from 0x06

transaction(newGreeting: String) {
    prepare(signer: &Account) {
        // Não precisamos fazer nada aqui, pois qualquer pessoa pode alterar a saudação
    }

    execute {
        // Chama a função do contrato para alterar a saudação
        HelloWorld.changeGreeting(newGreeting: newGreeting)
    }
}
