class Person {
    var age: Int = 0

    init(initialAge: Int) {
        if initialAge >= 0 {
          self.age = initialAge
        } else {
          self.age = 0
          print("Age is not valid, setting age to 0.")
        }
    }

    func amIOld() {
        if age < 13 {
          print("You are young.")
        } else if age >= 13 && age < 18 {
          print("You are a teenager.")
        } else {
          print("You are old.")
        }
    }

    func yearPasses() {
        self.age += 1
    }
}
