// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: [Bill Deng]

// Pseudocode

/*
Input: number
Output: string (with commas)
Steps:

call our function with argument as number
convert the number into string then into a list of individual number
go through list
  add a comma after every 3 numbers
reverse the list and convert to a string and output


*/

// Initial Solution
/*
var separateComma = function(num) {
  num = num.toString().split('').reverse();
  var results = [], counter = 0;
  for (var i = 0; i < num.length; i++) {
    results.push(num[i]);
    counter += 1;
    if(counter === 3) {
      results.push(",");
      counter = 0;
    }
  }
  results = results.reverse().join('');
  if (results[0] === ",") { results = results.substring(1);}
  return console.log(results);
};

*/

// Refactored Solution

var separateComma = function(num) {
  var results = [], counter = 0;
  num.toString().split('').reverse().forEach(function(element){
    results.push(element)
    counter += 1;
    if(counter === 3) {
      results.push(",");
      counter = 0;
    }
  })
  if (results[results.length - 1] === ","){
    results.pop();
  }
  return console.log(results.reverse().join(''));
};


// Your Own Tests (OPTIONAL)

separateComma(99999999);

separateComma(999999999);

separateComma(99999);

separateComma(9999);



// Reflection

/*
Answer the following questions.

1. What was it like to approach the problem from the perspective of JavaScript?
  # The approach was same, we knew to use idexes to access array elements.
2. Did you approach the problem differently?
  # No
3. What did you learn about iterating over arrays in JavaScript?
  # We can iterate using indexes or we can use 'forEach' to extract elements directly without using indexes
4. What was different about solving this problem in JavaScript?
  # JS has different set of methods, e.g. in RUBY i could do 'each_slice(3)' and would return first three elements.
  # In JS - we had use a counter to track number of elements and then insert ','
5. What built-in methods did you find to incorporate in your refactored solution?
  # We used
    # forEach
    # split('')
    # join('')
    # reverse('')

*/