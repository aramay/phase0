
var sum = function(numbers){

  var add = 0;
  for(var i = 0; i < numbers.length; i++){
    add += numbers[i];
  }

  console.log(add);
  return add;
}


// sum([1, 2, 3, 4, 5, 5, 7])


/*############################################*/

var mean = function(numbers){

  var answer = 0;
  var totalNumbers = numbers.length;
  var add = 0;

  for(var i = 0; i < numbers.length; i++){
    add += numbers[i];
  }

  console.log(add);
  answer = (add / totalNumbers);

  console.log(answer);

  return answer;
}

 mean([1, 2, 3, 4, 5, 5, 7])
//[4, 4, 5, 5, 6, 6, 6, 7]

/*############################################*/

var median = function(numbers){

  var index = 0;
  var totalNumbers = numbers.length;
  var results = 0;

  var results = [];

  if (totalNumbers % 2 != 0){
    //var index = 0;
    index = Math.floor(totalNumbers / 2);
    results = numbers[index];
    // console.log(numbers[index]);
  }
  else if (totalNumbers % 2 == 0){
    index = Math.floor(totalNumbers / 2);
    // results.push(numbers[index-1]);
    // results.push(numbers[index]);
    results = (numbers[index] + numbers[index-1]) / 2;

  }

  console.log(results);

  return resutls;

}

// median([1, 1, 2, 5, 6, 6, 9])
// median([1, 1, 2, 6, 6, 9])


