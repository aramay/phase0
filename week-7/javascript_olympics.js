  // JavaScript Olympics

// I paired [with: Elizabeth Brown] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up

// var athleteOne = new Object();
// athleteOne.name = 'Shannon Miller';
// athleteOne.event = 'Gymnastics';

// var athleteTwo = new Object();
// athleteTwo.name = 'Usain Bolt';
// athleteTwo.event = '100m Sprint';

// var athleteArray = [athleteOne, athleteTwo];

// var win = function(array) {
//   for (var i = 0; i < athleteArray.length; i++) {
//     console.log(array[i].name + " won " + array[i].event + "!");
//   }
// }

// win(athleteArray);

// Jumble your words

// var reverseString = function(string) {
//   console.log(string.split("").reverse().join(""))
// }

// reverseString("How are you?")


// 2,4,6,8


// var evenNumber = function(array){

//   var results = [];

//   for(var i=0; i < array.length; i++){
//     if (array[i] % 2 == 0){
//       results.push(array[i]);
//     }
//   }

//   return results;
// }

// console.log(evenNumber([1,2,3,4,5,6,7]))



// "We built this city"
function Athlete (name, age, event, tagLine){
  this.name = name;
  this.age = age;
  this.sport = event;
  this.quote = tagLine;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*
answer the following questions:

1. What JavaScript knowledge did you solidify in this challenge?
  # Constructors and object literals were clarified. Using function as an expression.
2. What are constructor functions?
  # Constructor functions can be used as template for creating objects of same type.
3. How are constructors different from Ruby classes (in your research)?
  # besides syntax, their functionality remains the same. Creating instances, and initializing variables.
*/