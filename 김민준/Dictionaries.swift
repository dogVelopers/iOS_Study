// Dictionary stores associations between keys of the same type and values of the same type
// in a collection with no defined ordering.
// Each value is associated with a unique key, which acts as an identifier for that value within the
// dictionary.
// items in a dictionary don't have a specified order.
// Dictionary<Key, Value> / [Key, Value]

var namesOfIntegers: [Int: String] = [:]
// nameOfIntegers is an empty [Int:String] dictionary

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
// 16 : sixteen

namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"] O

// read-only count property. find out the number of items in a Dictionary
print("The airports dictionary contains \(airports.count) items.")
// Prints "The airports dictionary contains 2 items."

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
// Prints "The airports dictionary isn't empty."

// add a new item to a dictionary with subscript syntax.
airports["LHR"] = "London"
// the airports dictionary now contains 3 items

// use subscript syntax to change the value associated with a particular key
airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"

// updateValue(_:forKey:)
// sets a value for a key if none exists, or updated the value if that key already exists.
// return the old value(optional value) after performing an update.
// if no value existed -> return nil
// this enables you to check whether or not an update took place.

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin."

// existing value -> return optional value containing
// if not exists -> return nil
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport."

airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it

airports["APL"] = nil
// APL has now been removed from the dictionary

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else { // nil
    print("The airports dictionary doesn't contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."

// iterating

// (key, value) tuple
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// LHR: London Heathrow
// YYZ: Toronto Pearson

// retrieve an iterable collection of a dictionary's keys or values
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson

// if you need to use a dictionary's keys or values with an API that takes an Array instance,
// initialize a new array with the keys or values property
let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]

let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]

// Dictionary type doesn't have a defining ordering.
// To iterate over the keys or values of a dictionary in a specific order
// Use the sorted() method on its keys or values property.
