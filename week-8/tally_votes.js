// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

  */


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

/*
1. go through votes list.
  1a. find candidates for president, vicePresident, secretary, treasurer
2. store votes in new list with name and number of votes.
  2a. IF name already exists, increase vote count by 1
  2b. ELSE create a new entry with name and vote count 1
3. announce winners w.r.t their offices.

*/

// __________________________________________
// Initial Solution
/*

  var x = 0;

  console.log(votes.Alex);
  // var pres = votes.Alex.president
  // console.log(pres);

  for (var name in votes){
    for (var office in votes[name]){
      // var x = votes.[key];

      // countVote(office, votes[name][office]);
      countVote(office, votes[name][office]);

    }
  }


function countVote(office, candidate) {

  candidateOffice = {};

  var count = 1;

  if (voteCount[office].hasOwnProperty(candidate)){

    //voteCount[key] = candidateOffice[candidate];
    count = voteCount[office][candidate];
    voteCount[office][candidate] = count + 1;
    //candidateOffice[candidate] = count;
    //voteCount[key] = candidateOffice;
  }

  else {
    voteCount[office][candidate] = count;

    //voteCount[key] = candidateOffice;
  }


  console.log("votecount keys "+ voteCount[office]);
  console.log(voteCount[office]);
  console.log(candidateOffice.Bob);



  console.log(candidateOffice);
  console.log(voteCount);
  console.log(office);
}
*/
// __________________________________________
// Refactored Solution

for (var name in votes){
  for (var office in votes[name]){

    countVote(office, votes[name][office]);

  }
}


function countVote(office, candidate) {

  var count = 1;

  if (voteCount[office].hasOwnProperty(candidate)){

    count = voteCount[office][candidate];
    voteCount[office][candidate] = count + 1;

  }

  else {
    voteCount[office][candidate] = count;

  }

}

/*********************************/


for (office in voteCount){

  var max = 0;
  // console.log(office);

  for (candidate in voteCount[office]){

    if (voteCount[office][candidate] > max){
      max = voteCount[office][candidate];

      officers[office] = candidate;
    }
  }

}

console.log(officers);
// console.log("officers");
// console.log(officers);

// __________________________________________
// Reflection

/*
answer the following questions:

1. What did you learn about iterating over nested objects in JavaScript?
  # for nested data structures, we can use a key to point
  to next object and iterate over them.
2. Were you able to find useful methods to help you with this?
  # We used 'hasOwnProperty' to figure out if key is present, bassed
  on the outcome perform related operations.
3. What concepts were solidified in the process of working through this challenge?
  # Iterating over nested data structures. Comparing keys and value from
  seperate structures. Extracting values, comparing results, updating results.

*/




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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
  )

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
  )

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
  )

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
  )

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
  )

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
  )

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
  )

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
  )
