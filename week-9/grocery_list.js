

grocery_list = {}

function addItem(item, quantity){
  //update item quantity if exist
  if (grocery_list.hasOwnProperty(item)){
    new_quantity = grocery_list[item];
    console.log(new_quantity)
    grocery_list[item] = new_quantity + quantity;
  }
  //add new entry
  else
    grocery_list[item] = quantity;
}
//remove item
function removeItem(item){
  delete grocery_list[item];
}


console.log(grocery_list)

item = "eggs"
quantity = 2

addItem(item, quantity)

console.log(grocery_list)

addItem(item, 3)

addItem("milk", 3)

console.log(grocery_list)

removeItem(item)

console.log(grocery_list)

//formatted output
for (var x in grocery_list){
  console.log("Your list includes "+x +" "+grocery_list[x]);
}