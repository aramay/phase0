/*
Gradebook from Names and Scores

I worked on this challenge [with:]
This challenge took me [-] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], //Joseph's scores
               [85, 80, 90, 90], // Susan's scores
               [75, 70, 80, 75], // William's scores
               [100, 90, 95, 85] ] // Elizabeth's scores


// __________________________________________
// Write your code below.


var gradebook = {
  Joseph: {
    testScores: [80, 70, 70, 100]
  },

  "Susan": {
    testScores: [85, 80, 90, 90]

  },

  William: {
    testScores: [75, 70, 80, 75]

  },

  Elizabeth: {
    testScores: [100, 90, 95, 85]

  },

  addScore: function(name, score){

    console.log(gradebook[name].testScores.push(score))

    console.log(gradebook[name])
    // console.log(name.testScores.push(score))

  },

  getAverage: function(name){
    console.log("get average running");
    // console.log(gradebook.getAverage())

    var testScores = gradebook[name].testScores;

    this.average(name, testScores);
  },

  average: function(name, avg){

    var add = 0;

    for(var x in avg){
      console.log(x)

      add += avg[x];


    }


    console.log("average running " + add + "=>" + avg[0]);

  },


}


// console.log(gradebook)

// console.log(gradebook.Joseph.testScores.push(1))




var scores = gradebook.addScore("Susan", 80)

console.log(gradebook.getAverage("Susan"))






// __________________________________________
// Refactored Solution








// __________________________________________
// Reflect









// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
