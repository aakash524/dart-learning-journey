void main() {

  /*
  if statement
Definition
An 'if' statement is used when we want to execute code only if a certain condition is true. 
If the condition is false, the code inside the 'if' block is skipped.

if ka use tab hota hai jab hum
  */
  int battery = 12;

  if (battery < 20) {
    print("Battery low! Please charge your phone.");
  }

  print("Checking complete.");

  ///////////////////////////
  /*
   Definition

   'if-else' is used when we need to execute code for one of two possible situations.

if-else ka use tab hota hai jab humein do possible situations 
mein se ek ke liye code chalana ho.

Condition true → if execute hoga.

Condition false → else execute hoga.

  */
 
  int cartItems = 0;

  if (cartItems > 0) {
    print("Proceed to checkout.");
  } else {
    print("Your shopping cart is empty.");
  }
////////////////////////////////
/*
Else if is used when more than two conditions have to be checked in order and there is a different action for each condition.
Definition
else if ka use tab hota hai jab do se zyada conditions ko order mein check karna ho aur har condition ke liye alag action ho.
*/
// streaming app internet speed ke according video quality suggest karti hai.
  int speed = 8;

  if (speed >= 25) {
    print("Ultra HD video");
  } else if (speed >= 10) {
    print("HD video");
  } else if (speed >= 3) {
    print("Standard quality video");
  } else {
    print("Internet too slow for streaming");
  }
///////////////////////////////
/*
switch statement
A switch is used when the value of an expression needs to be matched against multiple fixed cases.
switch ka use tab hota hai jab ek expression ki value ko multiple fixed cases ke saath match karna ho.

Yeh tab especially useful hota hai jab options pehle se defined hon, jaise menu choices, commands ya app settings

*/
//Smart home mein light mode select karna
  String mode = "night";

  switch (mode) {
    case "day":
      print("Lights turned off.");
      break;

    case "night":
      print("Warm lights turned on.");
      break;

    case "movie":
      print("Lights dimmed.");
      break;

    case "party":
      print("Colorful lights activated.");
      break;

    default:
      print("Unknown lighting mode.");
  }


















}