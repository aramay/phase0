// DOM Manipulation Challenge


// I worked on this challenge [with: ].


// Add your JavaScript calls to this page:

// Release 0:


// Release 1:

document.getElementById("release-0").className = "done";


// Release 2:


document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:




// Release 5:


var elements = document.getElementsByClassName('release-4');

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}

// Release 6

// var para = document.createElement("p");

// var node = document.createTextNode("new element");

// para.appendChild(node);

// var element = document.getElementById("release-3");

// element.appendChild(para);

var tmp1 = document.getElementById("hidden")

document.body.appendChild(tmp1.content.cloneNode(true));