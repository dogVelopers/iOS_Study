// Set stores distinct values of the same type in a collection with no defined ordering.
// Use when the order of items isn't important or need to ensure that an item only appears once

var letters = Set<Character>()

print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."

letters.insert("a")
// letters now contains 1 value of type Character

letters = []
// letters is now an empty set, but still of type Set<Character>

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// favoriteGenres has been initialized with three initial items
// a set of sting values

print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres."
// read-only count property

// isEmpty property : checking whether the count property is equal to 0:
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences."

// add a new item into a set by calling the set's insert(_:) method
favoriteGenres.insert("Jazz")
// favoriteGenres now contains 4 items

// remove an item from a set by calling the set's remove(_:) method
// removes the item if it's a member of set, and returns the removed value
// or returns nil if the set didn't contain it.
// Alternatively, all items in a set can be removed with its removeAll() method.
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// Prints "Rock? I'm over it."

// To check whether a set contains a particular item, use the contains(_:) method
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Print "It's too funky in here"

// Iterate
for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop

// Set type doesn't have a defined ordering.
// To iterate over the values of a set in a specific order, use the sorted() method
// which returns the set's element as an array sorted using the < operator
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Classical
// Hip hop
// Jazz

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

oddDigits.intersection(evenDigits).sorted()
// []

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true

farmAnimals.isSuperset(of: houseAnimals)
// true

farmAnimals.isDisjoint(with: cityAnimals)
// true
