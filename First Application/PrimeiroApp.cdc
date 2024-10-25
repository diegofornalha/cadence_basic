// Este é um contrato público chamado Counter (Contador)
access(all) contract Counter {
   // Variável pública que armazena o valor atual do contador
   access(all) var count: Int

   // Função pública para incrementar o contador
   access(all) fun increment() {
      self.count = self.count + 1
   }

   // Função pública para decrementar o contador
   access(all) fun decrement() {
      self.count = self.count - 1
   }

   // Função pública para obter o valor atual do contador
   // Tecnicamente, esta função não é necessária,
   // pois podemos ler a variável 'count' diretamente
   access(all) fun get(): Int {
      return self.count
   }

   // Função de inicialização do contrato
   init() {
      // Inicializa o contador com zero
      self.count = 0
   }
}
