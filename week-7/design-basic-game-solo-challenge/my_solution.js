 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: collect gems, don't step on spikes
// Goals: collect gems
// Characters: warrior
// Objects: warrior, gems, spikes
// Functions: moveWarrior, CollectGems, StepOnSpikes

// Pseudocode
//
//
//
//
//

// Initial Code
/*
function Gems(posX, posY){
  this.posX = posX;
  this.posY = posY;
}

function Spikes(posX, posY){
  this.posX = posX;
  this.posY = posY;
}

function Warrior(posX, posY){
  this.posX = posX;
  this.posY = posY;

  this.Move = function(direction){
    if(direction === "forward")
      this.posX += 10;

    if(direction === "back"){
      this.posY -= 10;
    }

    if(direction === "up"){
      this.posY += 10;
    }

    if(direction === "down"){
      this.posY -= 10;
    }
  }

}


var dragonWarrior = new Warrior(0, 0)

dragonWarrior.posX = Math.floor((Math.random() * 50) + 1);
dragonWarrior.posY = Math.floor((Math.random() * 50) + 1);

var warriorPosition = dragonWarrior.posX + dragonWarrior.posY;

var spike = new Spikes(0,0)

spike.posX = Math.floor((Math.random() * 50) + 1);
spike.posY = Math.floor((Math.random() * 50) + 1);

var spikePosition = spike.posX + spike.posY;
// dragonWarrior.moveUp = move;

var gems = new Gems(0,0)

gems.posX = Math.floor((Math.random() * 50) + 1);
gems.posY = Math.floor((Math.random() * 50) + 1);

var gemsPosition = gems.posX + gems.posY;


console.log(warriorPosition);
console.log(spikePosition);
console.log(gemsPosition);

if (warriorPosition == spikePosition) {
  console.log("Game Over, You are stuck in spikes !!")
}

else if (warriorPosition == gemsPosition) {
  var gold = 1;
  gold ++;
  console.log("You Scored some Gold! " +gold)
};

dragonWarrior.Move("forward");
dragonWarrior.Move("back");
*/

// Refactored Code
// Your mission description:
// Overall mission: collect gems, don't step on spikes
// Goals: collect gems
// Characters: warrior
// Objects: warrior, gems, spikes
// Functions: moveWarrior, CollectGems, StepOnSpikes

function Position(posX, posY){
  this.posY = posY;
  this.posX = posX;

  // this.moveWarrior = function() {
  // // console.log(this.posX);
  //   return this.posX + this.posY;
  // }

};

function MoveWarrior(){
  return warrior.posX+10;
}

function CollectGems(){
  if (warrior.posX === gems.posX) {
    warrior.gems = 1;
  }
  else
    return "no gems found";
}

function StepOnSpikes(){
  if (warrior.posX === spikes.posX) {
    return "steped on a spike";
  }
  else
    return "watch out for those spikes";

}
// posX = Math.floor((Math.random() * 50) + 1);
// posY = Math.floor((Math.random() * 50) + 1);

var warrior = new Position(Math.floor(Math.random() * 50) + 1, Math.floor(Math.random() * 50) + 1);

var gems = new Position(Math.floor(Math.random() * 50) + 1, Math.floor(Math.random() * 50) + 1);

var spikes = new Position(Math.floor(Math.random() * 50) + 1, Math.floor(Math.random() * 50) + 1);


console.log(warrior.posX)
console.log(MoveWarrior())

console.log(CollectGems())

console.log(StepOnSpikes())

// Reflection
/*
answer the following questions:

1. What was the most difficult part of this challenge?
  # Object Oriented Programing as a concept makes sense, but implementation has always been harder for me. Specially in java script. We can implemented same functionality as classes using functions.
2. What did you learn about creating objects and functions that interact with one another?
  # Functions allows us to group series of statements together to perform a specific task. This way we can different parts of program to perform same task again without giving series of instructions.
  # Objects - Let us group together set of properties of values to create a model.
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  # I did not use new methods
4. How can you access and manipulate properties of objects?
  # var stuf = {
    height: 1,
    width: 3,
  }

  add new property
  stuf.volume = 4;

  delete property
  delete stuf.height;

*/