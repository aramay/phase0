/*
Gradebook from Names and Scores

I worked on this challenge [with: Carlos Gonzalez]
This challenge took me [2] hours.

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
/*
var gradebook = {
  Joseph: {
    testScore:[80, 70, 70, 100]
  },
  Susan: {
    testScore:[85, 80, 90, 90]
  },
  William : {
    // testScore:[75, 70, 80, 75]
    testScore:scores[2]
  },
  Elizabeth : {
    testScore:[100, 90, 95, 85]
  }

};

gradebook.addScore = function(name, scorearguments){

  console.log(gradebook[name].testScore.push(scorearguments));

  console.log(gradebook[name].testScore)

}

gradebook.getAverage = function (name){

  var testScores = gradebook[name].testScore;
  // console.log(testScores);
  this.average(testScores);

}

gradebook.average = function(testScores){

  console.log("running average")

  var add = 0;
  var answer = 0;

  for (var x in testScores){
    add += testScores[x];
  }
  answer = (add / testScores.length);

  return answer;
}



// gradbook.average([100, 90, 95, 85])

gradebook.getAverage("Susan")
gradebook.addScore("Susan", 80) // would push the score 80 into the value of gradebook.Susan.testScores.

*/
// __________________________________________
// Refactored Solution
var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]

  },
  Elizabeth : {
    testScores: scores[3]
  }

};

//addScore function
gradebook.addScore = function(name, scorearguments){

  gradebook[name].testScores.push(scorearguments);

}

//getAverage function
gradebook.getAverage = function (name){

  var scores = gradebook[name].testScores;
  var avg = average(scores);

  return avg;

}

// Average function
var average = function (testScores){

  var add = 0;
  var answer = 0;

  for (var x in testScores){
    add += testScores[x];
  }
  answer = (add / testScores.length);
  return answer;
}


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