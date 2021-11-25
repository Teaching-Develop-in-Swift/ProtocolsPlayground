//: [Previous](@previous)
//: ### Comparable Protocol
//: Here's an example of comparable implemented, from the lesson. Try out sorting by various properties, sorting in different orders...

struct Employee: Equatable, Comparable {
  let firstName: String
  let lastName: String
  let jobTitle: String
  let phoneNumber: String

  static func ==(lhs: Employee, rhs: Employee) -> Bool {
      return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
             && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
  }

  static func < (lhs: Employee, rhs: Employee) -> Bool {
    return lhs.lastName < rhs.lastName
  }
}

let employee1 = Employee(firstName: "Ben", lastName: "Atkins", jobTitle: "Front Desk", phoneNumber: "415-555-7767")
let employee2 = Employee(firstName: "Vera", lastName: "Carr", jobTitle: "CEO", phoneNumber: "415-555-7768")
let employee3 = Employee(firstName: "Grant", lastName: "Phelps", jobTitle: "Senior Manager", phoneNumber: "415-555-7770")
let employee4 = Employee(firstName: "Sang", lastName: "Han", jobTitle: "Accountant", phoneNumber: "415-555-7771")
let employee5 = Employee(firstName: "Daren", lastName: "Estrada", jobTitle: "Sales Lead", phoneNumber: "415-555-7772")

let employees = [employee1, employee2, employee3, employee4, employee5]

let sortedEmployees = employees.sorted(by:>)
for employee in sortedEmployees {
  print(employee)
}
