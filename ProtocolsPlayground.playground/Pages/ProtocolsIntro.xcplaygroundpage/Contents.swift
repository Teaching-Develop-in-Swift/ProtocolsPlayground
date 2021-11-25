//: ## Protocols
//: In this playground we'll explore protocols, especially three of the four we focus on in the Protocols lesson from [Develop in Swift Data Collections](http://apple.co/developinswiftdatacollections).
//:
//: This is an example of the difference between classes and structs, when we print them.

class Shoe {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

struct Shirt {
    let color: String
    let size: String
}

let shoe = Shoe(color: "blue", size: 46, hasLaces: true)
print(shoe)

let shirt = Shirt(color: "red", size: "M")
print(shirt)

//: Let's see what happens when we add our `CustomStringConvertible` protocol to our types [next](@next)...
