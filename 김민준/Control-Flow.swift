// For-In Loops
// iterate over a sequence, such as items in an array, ranges of numbers, or characters in string

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Brian!
// Hello, Jack!

// can also iterate over a dictionary to access its key-value pairs.
// Each item in the dictionary is returned as a (key, value) tuple
// Dictionary are inherently unordered
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// cats have 4 legs
// ants have 6 legs
// spiders have 8 legs

// range operator : ...
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

// if you don't need each value from a sequence, you can ignore that values by using an
// underscore in place of a variable name
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// Prints "3 to the power of 10 is 59049"

// Use half-open range operator (..<) to include the lower bound but not the upper bound
let minutes = 60
for tickMark in 0..<minutes {
    // render the tick mark each minute (60 times)
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}

// The examples above use a for-in loop to iterate ranges, arrays, dictionaries, and strings.
// However, you can use this syntax to iterate any collection, including your own classes and
// collection types, as long as those types conform to the Sequence protocol.

// While Loops
// best used when the number of iterations isn't known before the first iteration begins.
// while evaluates its condition at the start of each pass through the loop.
// repeat-while evaluates its condition at the end of each pass through the loop.
