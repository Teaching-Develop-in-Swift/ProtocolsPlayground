//: [Previous](@previous)
//: ### Equatable Protocol
//:
//: Structures get equatability built-in for free, just by conforming to the protocol
//:
//: The equality test compares each property and if they're all equal, the two constants will be considered equal
struct Shirt: Equatable {
    let color: String
    let size: String
}

let shirt1 = Shirt(color: "red", size: "L")
let shirt2 = Shirt(color: "red", size: "L")
let shirt3 = Shirt(color: "blue", size: "L")

shirt1 == shirt2
shirt1 == shirt3

//: Whereas with classes we *need* to implement the static `==(lhs:rhs)->Bool` function when we adopt the Equatable protocol.
//:
//: Try uncommenting the protocol declaration below to see the compiler error message (and try out the fix).
class Shoe/*: Equatable*/ {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

let shoe1 = Shoe(color: "red", size: 12, hasLaces: true)
let shoe2 = Shoe(color: "red", size: 12, hasLaces: true)
let shoe3 = Shoe(color: "blue", size: 11, hasLaces: false)
let shoe4 = shoe3

//shoe1 == shoe2
//shoe1 == shoe3
//shoe3 == shoe4

//: Check out Comparable [next](@next)
