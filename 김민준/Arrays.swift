var someInts: [Int] = []

print("someInts is of type [int] with \(someInts.count) items.")
// Prints "someInts is of type [int] with 0 items

someInts.append(3)
// someInts now contain 1 value of type Int

print("someInts is of type [int] with \(someInts.count) items")

someInts = []
// someInts now an empty array, but is still of type [int]
print("someInts is of type [int] with \(someInts.count) items")

var threeDoubles = Array(repeating: 0.0, count : 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

var anotherThreeDoubles = Array(repeating: 2.5, count : 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

var shoppingList: [String] = ["Eggs", "Milk"]

// var shoppingList = ["Eggs", "Milk"]로도 선언 가능

print("The Shopping list contains \(shoppingList.count) items")
// Prints "The shopping list contains 2 items."

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
// Prints "The shopping list isn't empty."

shoppingList.append("Flour")
// shoppingList now contains 3 items

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"
// The first item in the array has an index of 0, not 1
// Arrays in Swift are always zero-indexed.

shoppingList[0] = "Six eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs"
// When use subscript syntax, the index specify needs to be valid.

// shoppingList[shoppingList.count] = "Salt" -> runtime Error

shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items
// 4 : Chocolate Spread -> Bananas
// 5 : Cheese -> Apples
// 6 : removed

for item in shoppingList {
    print(item)
}

shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now conatains 7 items
// "Maple Syrup" is now the first item in the list

let mapleSyrup = shoppingList.remove(at: 0)
// the item that was at index 0 has just removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string

// The largest valid index in an array : count - 1
// try to access or modify a value for an index that's outside of an array's existing bounds -> runtime error

firstItem = shoppingList[0]
// firstItem is now equal to "Six eggs"

let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string

for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas
