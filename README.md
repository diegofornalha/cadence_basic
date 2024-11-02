## 👋 Bem-vindo, Desenvolvedor Flow!

Bem-vindo ao seu novo projeto Flow. Este projeto é um ponto de partida para você desenvolver contratos inteligentes na Blockchain Flow. Ele vem com contratos de exemplo, scripts, transações e testes para ajudá-lo a começar.

## 🔨 Começando

Caso queira inciar o projeto do zero, você precisa remover o flow.json e rodar o comando:

```shell
flow init
```

note que o flow.json foi criado na pasta do projeto, e por padrão sera criado um contrato chamado Counter.

agora voce precisa adicionar o emulador no seu flow.json

```json
  "deployments": {
    "emulator": {
      "emulator-account": ["CounterA"]
    }
  }
```

## 🔨 Esse Projeto

se rodar esse projeto você vai notar que quando der o comando:

```shell
flow project deploy --network=emulator
```

vai aparecer algo como :

```shell
Deploying 1 contracts for accounts: emulator-account

CounterA -> 0xf8d6e0586b0a20c7 (da9d04efe4c9e845a874f25fb2c325a07e5bf26bfacc1733d6c87adf0d68610e)

🎉 All contracts deployed successfully
```

isso significa que o contrato foi implantado com sucesso.

## 🔨 Para um novo contrato

crie um contrato no arquivo contracts/contrato.cdc

em seguida, defina um nome para o seu projeto e siga as instruções.

Entre na pasta do projeto e execute o comando:

```shell
flow emulator start
```

agora va para o outro terminal dentro da sua pasta do projeto e execute o comando:

```shell
flow project deploy --network=emulator
```

Caso voce crie outro contrato, voce pode adicionar ele ao flow.json se certifique que ele estara emulator-account e na pasta cadence/contracts/

## 🔨 Para remover o contrato

Caso queira remover o contrato, voce pode usar o comando:

```shell
flow accounts remove-contract Counter --network=emulator
```

Outro comando para adicionar um contrato especifico:

```shell
flow accounts add-contract ./cadence/contracts/CounterA.cdc
```

Esse comando vai fazer com que adicione automaticamente no flow.json:
Antes:
"emulator-account": []
Depois:
"emulator-account": ["CounterA"]

e em seguida pode rodar o comando novamente para implantar o contrato:

```shell
flow project deploy --network=emulator
```

## 📦 Estrutura do Projeto

Seu projeto foi configurado com a seguinte estrutura:

- `flow.json` - Este é o arquivo de configuração do seu projeto (análogo a um arquivo `package.json` para NPM). Ele foi inicializado com uma configuração básica para começar.
- `/cadence` - É aqui que o código dos seus contratos inteligentes Cadence está localizado.

Dentro da pasta `cadence` você encontrará:

- `/contracts` - Esta pasta contém seus contratos Cadence (estes são implantados na rede e contêm a lógica de negócios para sua aplicação)
  - `Counter.cdc`
- `/scripts` - Esta pasta contém seus scripts Cadence (operações somente leitura)
  - `GetCounter.cdc`
- `/transactions` - Esta pasta contém suas transações Cadence (operações que alteram o estado)
  - `IncrementCounter.cdc`
- `/tests` - Esta pasta contém seus testes Cadence (testes de integração para seus contratos, scripts e transações para verificar se eles se comportam conforme esperado)
  - `Counter_test.cdc`

## 👨‍💻 Comece a Desenvolver

Você pode importar qualquer um de seus próprios contratos ou dependências instaladas em seu arquivo de script usando a palavra-chave `import`. Por exemplo:

```cadence
import "Counter"
```

### Transação

utilize esse comando no terminal para executar a transação:

```shell
flow transaction send ./cadence/transactions/IncrementCounter.cdc --signer emulator-account
```

### Instalando Dependências Externas

Se você quiser usar dependências de contrato externas (como NonFungibleToken, FlowToken, FungibleToken, etc.) você pode instalá-las usando o [Gerenciador de Dependências do Flow CLI](https://developers.flow.com/tools/flow-cli/dependency-manager).

Por exemplo, para instalar o contrato NonFungibleToken, você pode usar o seguinte comando:

```shell
flow deps add mainnet://1d7e57aa55817448.NonFungibleToken
```

Os contratos podem ser encontrados usando o [ContractBrowser](https://contractbrowser.com/), mas certifique-se de verificar a autenticidade antes de usar contratos de terceiros em seu projeto.

## 🧪 Testando

Para verificar se seu projeto está funcionando conforme esperado, você pode executar os testes usando o seguinte comando:

```shell
flow test
```

Este comando executará todos os testes com o sufixo `_test.cdc` (estes podem ser encontrados na pasta `cadence/tests`). Você pode adicionar mais testes aqui usando o comando `flow generate test` (ou criando-os manualmente).

Para saber mais sobre testes em Cadence, confira a [Documentação do Framework de Testes Cadence](https://cadence-lang.org/docs/testing-framework).

## 🚀 Implantando Seu Projeto

Para implantar seu projeto na rede Flow, você deve primeiro ter uma conta Flow e ter configurado seus alvos de implantação no arquivo de configuração `flow.json`.

Você pode criar uma nova conta Flow usando o seguinte comando:

```shell
flow accounts create
```

Saiba mais sobre como configurar alvos de implantação na [documentação do Flow CLI](https://developers.flow.com/tools/flow-cli/deployment/project-contracts).

### Implantando no Emulador Flow

Para implantar seu projeto no Emulador Flow, inicie o emulador usando o seguinte comando:

```shell
flow emulator --start
```

Para implantar seu projeto, execute o seguinte comando:

```shell
flow project deploy --network=emulator
```

Este comando iniciará o Emulador Flow e implantará seu projeto nele. Você pode agora interagir com seu projeto usando o Flow CLI ou um [cliente](https://developers.flow.com/tools/clients) alternativo.

### Implantando no Flow Testnet

Para implantar seu projeto no Flow Testnet, você pode usar o seguinte comando:

```shell
flow project deploy --network=testnet
```

Este comando implantará seu projeto no Flow Testnet. Você pode agora interagir com seu projeto nesta rede usando o Flow CLI ou qualquer outro cliente Flow.

### Implantando no Flow Mainnet

Para implantar seu projeto no Flow Mainnet, você pode usar o seguinte comando:

```shell
flow project deploy --network=mainnet
```

Este comando implantará seu projeto no Flow Mainnet. Você pode agora interagir com seu projeto usando o Flow CLI ou um [cliente](https://developers.flow.com/tools/clients) alternativo.

## 📚 Outros Recursos

- [Padrões de Design Cadence](https://cadence-lang.org/docs/design-patterns)
- [Anti-Padrões Cadence](https://cadence-lang.org/docs/anti-patterns)
- [Contratos Core Flow](https://developers.flow.com/build/core-contracts)

## 🤝 Comunidade

- [Flow Community Forum](https://forum.onflow.org/)
- [Flow Discord](https://discord.gg/flow)
- [Flow Twitter](https://x.com/flow_blockchain)
