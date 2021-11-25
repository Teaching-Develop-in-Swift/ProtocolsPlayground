//: [Previous](@previous)
//: ### `CustomStringConvertible` Protocol
//: Now we've adopted the CustomStringConvertible protocol for our types...

class Shoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool

    var description: String {
        return "A \(self.color) shoe, size \(self.size) "
    }

    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

struct Shirt: CustomStringConvertible {
    let color: String
    let size: String

    var description: String {
        return "A \(self.color) shirt, size \(self.size)"
    }

}

let shoe = Shoe(color: "blue", size: 46, hasLaces: true)
print(shoe)

let shirt = Shirt(color: "red", size: "M")
print(shirt)

//: So we have a bit more work to do with structs where we might like the default implementation. but it's certainly useful for our class descriptions!

//: Check out Equatable [next](@next)
