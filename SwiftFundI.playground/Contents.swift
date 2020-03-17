print("hello, world")
//: ## Comments
//: A comment is text that is ignored by the compiler. So it can be plain text, or even code. If it formatted like the examples below, it will be completely ignored when the project is built. Comments are notes to yourself or others about how a given block of code functions.
// A single line comment is one with two slashes as the first characters
/*
 * A multi-line comment
 * is one that is bounded by
 * /* and */ characters
 */
//: ## Identifiers
//: first character A-Z or a-z or _, followed by any of these plus 0-9
var lambdaSchool = "Awesome"
lambdaSchool = "Another string"

print(lambdaSchool)
//: ## Mutability
//: There are two kinds of containers that hold values in Swift. One kind is called a constant, because once a value has been set, it cannot change for the lifetime of that container. Constants are declared with the `let` keyword.
// myName can not be changed to any other value
let myName = "Spencer Curtis"
//: Variables are declared with the 'var' keyword
// favoriteColor can now be changed from its original value
var favoriteColor = "Blue"

favoriteColor = "Green"
//: ## Type Inference and Explicit Typing
//: All containers in Swift must have a type set on them. The containers we've seen so far had their types set implicitly. This is called _type inference_. Meaning the kind of object stored in the container was determined by looking at what kind of value was assigned to the container.
// Told to be an Int
var myNumber: Int = 10

// The computer assumes the type is String
let ios = "Apple's mobile operating system"
//: In the line above, the constant `ios` stores a value "Apple's mobile operating system". This value is a `String`, so the data type of `ios` is `String`. The type was _inferred_ by the value provided.
//: Another way to type a container is to set it explicitly. See some examples of this below.
var onSale: Bool = true // or false
//: ## Type Safety
//: Once a container's data type is set, it cannot hold a value of any other type
// onSale = "Yes"
// will not compile because onSale is a Bool and variables can not switch their type
//: ## Type Coercion
//: Types are never automatically converted into another type.
let label = "The width is "
let width = 94

let combinedString = label + String(width) // "94"
//: ## String Interpolation and Concatenation
//: Using the `+` operator with two strings is called _string concatentation_. One string is appended to the end of another.
// Adding two strings together combines the strings, one after another.

let heightLabel = "The height is " + "100"
print(heightLabel)
//: The below example shows the _string interpolation_ characters (`\()`). These allow a `String` (or non-string) value to be placed in-line inside a larger `String` literal value. If the value is not already a `String`, it will be converted.
// To insert a variable into a string use this format: \(VARIABLE_NAME)

let widthLabel = "The width is \(width)"

let someString = "This is an example \(true), \(239.38)"
//: ## Collections
//: ### Arrays
//: A Swift array is a collection of like objects, and they are stored in the order they are added. Accessing a particular element is done by using its index value (which starts at 0).
let shipCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]

// Missing one element, so the arrays are different
let differenceCaptains = ["Jean-Luc Picard", "James T. Kirk", "Han Solo"]

let james = shipCaptains[2] // finds the value stored at that index
//: Array equality is determined by looking at each element. If all elements are the same, and in the same order, the two arrays are equal.
if shipCaptains == differenceCaptains {
    print("The arrays are equal")
} else {
    print("The arrays are not equal")
}
//: Since `shipCaptains` was declared as a constant, we must convert it to a mutable array before we can add entries.
var myHobbies = ["Coding", "Math", "Problem solving"]

var moreCaptains = shipCaptains

// .append - inserts the element at the end of array

moreCaptains.append("Some captain")

print(moreCaptains)

// .insert - you choose where the element gets placed

moreCaptains.insert("Another Captain", at: 0)

print(moreCaptains)

// Changes the element at that index
moreCaptains[0] = "Jack Sparrow"
//: ### Dictionaries
//: A Swift dictionary is similar to an array in that is a collection, but the items are stored in no particular order. To access an item, its associated key is provided. Dictionaries are also called "key-value" stores. The key has a type, and the value can have the same or a different type.
// In dictionaries, all the keys must be of the same type, and all the values must be of the same type

var occupations = ["Spencer": "IOS Instructor", "Brian": "Team Lead"]

occupations.updateValue("Team Lead", forKey: "Kenny")

//: ## Looping
//: ### `for`
//: `for` loops allow for iterating over a collection of elements (usually an array), examining each element in turn.
let scores = [92, 10, 84, 72, 19]

// score is a temporary variable that stores each element in turn, going through the array

for score in scores {
    
    if score < 90 {
        print("You did not get an A grade.")
    } else {
        print("You got an A!")
    }
}

//: ### `switch`
//: `switch` statements are useful when a multiple-choice path is possible for your code, and you want to choose a single path at runtime, based on some criteria.
let diceRoll = 3

//  Switches must be all inclusive

switch diceRoll {
case 1:
    print("Rolled a 1")
    
case 2, 3:
    print("Rolled a 2 or a 3")
    
case 4...6:
    print("Rolled a number from four to six")
    
default:
    print("How did you roll this?")
}
//: ## Functions
//: A function in Swift is nothing more than a collection of instructions that accomplish some task. The advantage to grouping the instructions into a function is that the function can then be called whenever that task should be performed, rather than having to list out those instrutions a second, third, or nth time.
// func FUNCTION_NAME(PARAMATER_NAME: [PARAMETER_TYPE]) -> RETURN_TYPE {
// FUNCTION CODE }

func averageScores(scores: [Int]) -> Int {
    
    var totalScores: Int = 0
    
    for score in scores {
        totalScores += score
    }
    
    print(totalScores)
    
    let average = totalScores / scores.count
    
    return average
}

averageScores(scores: [67, 45, 74, 36, 24, 37, 73, 73, 85, 346])
//: ## Tuples
//: Tuples are a lightweight way of grouping related values into a single compound value.
// Tuples are similar to dictionaries, but each element can be of a different type

let me = (name: "Spencer", favoriteColor: "Blue", occupation: "IOS Instructor")
me.1 == me.favoriteColor

let carrots = (name: "Carrots", aisle: 4, inStock: true)
