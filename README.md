# Closures


## Toy Bin

![](http://i.imgur.com/k6wUrk2.jpg?1)

For the following questions, we're going to be calling on the `sorted(by:)` function available to `Arrays`. Take a look in the `SortingStuff.swift` file. You will notice that we have a `ToyBin` struct, along with `Ship`, `Book`, `BowlingPin`, `MusicCD` structs. Lastly, there's a `Color` enum. The `ToyBin` has stored properties of its own being arrays of these other structs. We have ourselves a toybin that contains bins (arrays) of all of these various toys. Its our job to create functions on the `ToyBin` struct that will be able to sort these various bins (arrays).

**(1)** Create a function named `sortShips()`. In your implementation of this function, you will want to sort the `ships` stored property. How should you do that? Use the `sorted(by:)` function available to `Array`s. This `sorted(by:)` function takes in as an argument a closure. Call this function on the `ships` stored property and implement the closure.

How should you implement this closure? Using the following conditions:

* If the name of the ship is "Titanic", it should be at the front of the list.
* They should be sorted from the oldest ships to the youngest ships (using their `age`).

`sorted(by:)` returns back a [`Ship`]--that is an array of `Ship`s all sorted. Make sure to assign this return value back to the `ships` stored property.


**(2)** Create a function named `sortBooks()`. Similar to question #1, you will be calling `sorted(by:)`. This time, we will be calling on the `sorted(by:)` function on the `books` stored property and assign the return value of that function call back to the `books` property (to mutate it!).

How should you implement the closure? Use the following conditions:
* The  books should be sorted by their `name` property. A --> Z
* Try implementing this closure using the shorthand argument names ($0, $1, etc.)

**(3)** Create a function named `sortBowlingPins()`. Similar to the above questions, you will be calling `sorted(by:)`. The `sorted(by:)` function should be called on the `bowlingPins` stored property. The return value should be assigned to the `bowlingPins` property (thus mutating it!).

How should you implement the closure? Use the following conditions:
* Each instance of `BowlingPin` has a `color` stored property of type `Color`. We want to sort our `bowlingPins` so that they form a rainbow. (meaning.. red first, orange second, yellow third, etc.). Take a look at the `Color` enum (notice how it's backed by a raw value). That was a hint.
* Implement this closure using shorthand argument names only.

**(4)** Create a function named `sortMusicCDs()`. Similar to the above questions, you will be calling on the `sorted(by:)` function. It should be called on the `musicCDs` stored property where the return value is assigned to the `musicCDs` property.

How should you implement the closure? Use the following conditions:

* The CD's should be sorted by `name`. In alphabetical order.
* One condition, "Drake" should be at the front of the list (no matter what).


> Live without pretending, love without depending, listen without defending, speak without offending" -[Drake](https://en.wikipedia.org/wiki/Drake_(musician))


![](https://media.giphy.com/media/DjYYoUZJ8D4VW/giphy.gif)

**(5)** Create a function called `changeColorOfAllPins(to:)` which takes in one argument called `color` of type `Color`. Ultimately, we want to change the `color` stored property of every `BowlingPin` instance in our `bowlingPins` array to the `color` parameter passed in to this function. Can you do this with a `for-in` loop? Yes. Should you for this problem? No--we will be using the `map` function instead!

Implement this function by calling the `map` function on our `bowlingPins` stored property. This function call will return back a new array (of the same type of the function thats calling it) which means it will return back a [`BowlingPin`] array.

When you call on `map`, it requires that you pass in a closure as an argument. You should look to call on `changeColor(to:)` (a function available to any instance of `BowlingPin`) within your implementation of the closure.

The return value on your `map` method call should be assigned to the `bowlingPins` stored property (thus mutating it!).



## Calculator Function (advanced)
This question is optional (meaning.. it's not required). Head over to the `ViewController.swift` file and implement this function there.

![](http://i.imgur.com/Fesra1A.jpg?1)


This function should take in any amount of `Double`s. As well, it will also take in a function of type (`Double`, `Double`) -> `Double`. If you don't know how to read that syntax, I recommend watching this [video](https://www.youtube.com/watch?v=AbGul81_X4s). Also, click this [link](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html) and read the section titled **Functions as Types**.

How it will look when someone calls on this function (that you will be asked to make soon).

This is an example of calling on this function passing in three `Double` values.

```swift
performOperation(with: 1, 2, 3, operation: +)
```

This is an example of calling on the function passing in only one `Double` value.

```swift
performOperation(with: 1, operation: +)
```

You might notice that when passing in values to this function, we're able to pass in multiple values (like in the first example) without using an `Array`.

The function below is _not_ how we want this function to work. This function is different in that it would be accepting of an `Array` of `Double`s (which is not what we want).

```swift
performOperation(with: [1, 2, 3] operation: +)
```



How do we create a function then with the intended behavior (the first two examples)?

Click this [link](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html), scroll down and read the section titled **Variadic Parameters**.

.. back to the problem at hand. 

**Task:** Create a function named `performOperation(with:operatrion)` that takes in two arguments. The first argument should be named `numbers` of type `Double...` (if you read the section above on Variadic Parameters, you know what this means). The other argument should be named `operation` of type (`Double`, `Double`) -> `Double`. The `performOperation(with:operation)` itself should return back a `Double`.

In your implementation, you should perform the passed in operation on each and every number.

For example:

```swift
let result = performOperation(with: 5, 2, -9, operation: -)
print(result)
// Prints "12.0"
        
let anotherResult = performOperation(with: 2, 2, 5, operation: +)
print(anotherResult)
// Prints "9.0"
```

Here's the kicker. In your implementation, you need to use the `reduce` function available to the `numbers` parameter. `reduce` is available to arrays (which is what `numbers` becomes being a variadic parameter). No `for-in` loops.

