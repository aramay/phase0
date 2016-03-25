 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: collect gems, don't step on spikes
// Goals: collect gems
// Characters: warrior
// Objects: warrior, gems, spikes
// Functions: moveWarrior, collectGems, StepOnSpikes

// Pseudocode
//
//
//
//
//

// Initial Code
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

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//