// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

$p = $("h1");
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$("h1:first").css({"border": "2px solid red"});

$("h1:last").html("Fierry skippers");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(){
    // e.preventDefault()
    $(this).attr('src', 'imgs/fiery-skipper-mascot.jpg')
  })

// $('img').on('moueleave', function(){
//     // e.preventDefault()
//     $(this).attr('src', 'imgs/devbootcamp-logo-new.png')
//   })
//RELEASE 5: Experiment on your own






});  // end of the document.ready function: do not remove or write DOM manipulation below this.
