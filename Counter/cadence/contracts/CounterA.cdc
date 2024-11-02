access(all) contract CounterA {
   access(all) var count: Int

   access(all) fun increment() {
      self.count = self.count + 1
   }

   access(all) fun decrement() {
      self.count = self.count - 1
   }

   access(all) fun get(): Int {
      return self.count
   }

   init() {
      self.count = 0
   }
}
