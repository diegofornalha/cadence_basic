access(all) contract HelloWorld {
    access(all) var greeting: String

    init() {
        self.greeting = ""
    }
    access(all) view fun hello(): String {
        return self.greeting
    }
    access(all) fun changeGreeting(newGreeting: String) {
        self.greeting = newGreeting
    }
}
