// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//Unary operators
console.log(typeof 4.5)
console.log(""+ 2)
//

x = "x"
console.log(x += x)

console.log("c"+"c")

//alert("hello")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle
// for(var i=1; i<= 7; i++)
//   for(var j=0; j<i; j++)
//     console.log("puts x "  +j)

for (var triangle = "x"; triangle.length < 7; triangle += "x")
  console.log(triangle)

//FizzBuzz

/* print all the numbers from 1 to 100, with two exceptions. For numbers divisible by 3, print "Fizz" instead of the number, and for numbers divisible by 5 (and not 3), print "Buzz" instead.*/

for (var i=0; i<100; i++){
  if (i % 3 == 0)
    console.log("fizz");
  if(i % 5 == 0)
    console.log("buzz");
  else
    console.log(i)
}



// Functions

// Complete the `minimum` exercise.
function minimum(num1, num2){
  if (num1 < num2)
    return num1;
  else
    return num2;

}
//Driver code
console.log(minimum(2,4))

console.log(minimum(4,2))

console.log(minimum(4,4))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "john doe",
  age: 34,
  favorite_food: ["eggs", "milk", "tea"],
  quirk: ["I like vegetable foods"]
}
//Driver code
console.log(me)


// Release 2
//Reflect

/*
answer the following questions:

1. What are the biggest similarities and differences between JavaScript and Ruby?
  # similarities:
    # Strings work the same way
    # arrays work the same
    # arithmatic operations work the same way except for division operator
  # differences
    # method definition is different
    # print methods are different
    # loops are different, there is no '.each' method.
    # JavaScript syntax is different. It's a strictly typed language.
    # We have use 'var' keyword for variable declaration.

2. Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
  # array concepts like indexing a value.
  # using 'dot' operator to work with variable properties.
  # nested data structures
3. How do you feel about diving into JavaScript after reading these chapters?
  # JS is bit more difficult to learn than ruby. I only fear aboout the syntax when switching from Ruby to JS.
*/