void main(){

  /*
  : A for loop is used to execute a block of code repeatedly for a 
  specified number of iterations or while its loop condition remains true.

  */
    //Q1
    /*
  int num =3;
  for(int a =1; a<=10; a++){
      print(" $num x $a = ${num*a}");
  } 
  
  */
  
  //Q2
  
//   for(int i =1 ; i<=20; i++){
//       if(i%2==0)
//       print("Even num is $i");
//   }
  
  
  //Q3
   int sum =0;
  for(int i =1; i<=10; i++){
     print("$sum + $i ");
       
     sum+=i;
      print("=$sum");
     
   }
   print(" the sum from 1 to 100 is $sum");



/// break aur continue statements
/// Jab humein loop ko beech mein hi stop karna ho,
///  tab break use karte hain. Condition true hone ka wait nahi karna padta; break execute hote hi loop khatam ho jata hai.


/*    Q1-----
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }

    print(i);
  }

  Q2------
  List<String> products = [
    "Laptop",
    "Mouse",
    "Keyboard",
    "Monitor"
  ];

  for (String product in products) {
    print("Checking: $product");

    if (product == "Keyboard") {
      print("Product found!");
      break;
    }
  }
 
 continue_____ in dart 
 Jab current iteration ka remaining code skip karna ho, 
 lekin loop ko band nahi karna ho, tab continue use karte hain.


  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }

    print(i);
  }



Q2----
Suppose student marks ki list hai aur tumhe sirf passing students ke marks print karne hain.
  List<int> marks = [80, 25, 65, 30, 90];

  for (int mark in marks) {
    if (mark < 40) {
      continue;
    }

    print("Pass: $mark");
  }





*/















































  
}