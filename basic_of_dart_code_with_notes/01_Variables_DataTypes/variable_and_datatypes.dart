void main() {
  print("hello Dart "); 
  print("hello Aaakash Yadav welcome to Dart learning ");

  String developerName;          // 1. Declaration: Creating a variable without a value
  developerName = "Rahul";       // 2. Initialization: Assigning the first value
  developerName = "Sarmesh";     // 3. Assignment: Updating the existing value

  // --- Basic Data Types ---
  String name1 = 'Aaaksh';       // String: Used to store text
  int age1 = 21;                 // int: Used for integers / whole numbers
  double percentage1 = 44.4;     // double: Used for decimal / floating-point numbers
  bool isStudent1 = true;        // bool: Boolean values, can only be true or false
  
  print("Name: $name1");
  print("Age: $age1");
  print("Percentage: $percentage1");
  print("Is Student: $isStudent1");

  // --- 1. Explicit Type ---
  // Use when you want to lock the data type and make code easily readable
  String name2 = "Rahul";
  int age2 = 21;
  double percentage2 = 85.5;
  bool isStudent2 = true;
   // --- 7. num Type ---
  // Explicit Type syntax: Can hold both integers and double values
  num age8 = 21;                 // Currently holds an integer value
  num percentage8 = 85.5;        // Currently holds a double value

  // We can change types dynamically with num:
  num score = 50;                // Starts as an int value
  score = 55.7;  
                  // Correct! Changed from int to double smoothly (No error)

  // --- 2. var (Type Inference) ---
  // Dart automatically detects the data type based on the assigned value
  var name3 = "Rahul";           // Dart infers this as a String
  var age3 = 21;                 // Dart infers this as an int
  var percentage3 = 85.5;        // Dart infers this as a double
  var isStudent3 = true;         // Dart infers this as a bool

  // --- 3. dynamic ---
  // Disables type checking. The value and its type can change at runtime
  dynamic name4 = "Rahul";       // Currently a String
  name4 = 25;                    // Changed to int later (Allowed, no error)
  dynamic age4 = 21;
  dynamic percentage4 = 85.5;
  dynamic isStudent4 = true;

  // --- 4. final ---
  // Run-time constant: Once assigned, the value cannot be changed
  final String name5 = "Rahul"; 
  // final var age5 = 21;         // ❌ Wrong: 'final' and 'var' cannot be used together
  final age5 = 21;               // Sahi: Specifying the type is optional when value is assigned directly
  final double percentage5 = 85.5;
  final bool isStudent5 = true;

  // --- 5. const ---
  // Compile-time constant: Value must be fixed and known before compilation
  const String name6 = "Rahul";
  const age6 = 21;               // Specifying the type is optional
  const double percentage6 = 85.5;
  const bool isStudent6 = true;

  // --- 6. late ---
  // Lazy initialization: Variable will be initialized later but remains non-nullable
  late String name7;
  late int age7;
  late double percentage7;
  late bool isStudent7;

  // Initialization happens later here:
  name7 = "Rahul"; 


  // ==========================================
  // ALLOWED REASSIGNMENT (Jahan value badal sakti hai)
  // ==========================================

  // 1. Explicit Type (Type lock hai, value nahi)
  String name = "Aakash";
  name = "Rahul"; // ✅ Sahi hai! (String se String badal sakte hain)
  // name = 25;   // ❌ Ghalat: Type change nahi ho sakta

  // 2. var (Type Inference - Type ek baar lock, value badal sakti hai)
  var age = 21; // Dart ne infer kiya ki yeh 'int' hai
  age = 25;     // ✅ Sahi hai! (int se int badal sakte hain)
  // age = 25.5; // ❌ Ghalat: Double nahi daal sakte, type lock ho chuka hai

  // 3. dynamic (Sabse flexible - Kuch bhi badal sakte hain)
  dynamic percentage = 44.4; 
  percentage = 85.5;      // ✅ Sahi hai! (Value badli)
  percentage = "Pass";    // ✅ Yeh bhi Sahi hai! (Type hi badal diya, dynamic hai)

  // 4. late (Initialization ke baad bhi normal variable ki tarah kaam karta hai)
  late bool isStudent;
  isStudent = true;  // First initialization
  isStudent = false; // ✅ Sahi hai! (Reassignment allowed hai)


  // ==========================================
  // NOT ALLOWED REASSIGNMENT (Jahan value LOCK hoti hai)
  // ==========================================

  // 5. final (Ek baar value de di, toh dobara change nahi hogi)
  final String developerName_ = "Aakash";
  // developerName_ = "Yadav"; // ❌ Compile Error: A final variable can only be set once.

  final currentAge = 21;
  // currentAge = 22;        // ❌ Compile Error: Value cannot be changed.

  // 6. const (Bilkul fix, compile time par hi lock)
  const double piValue = 3.14;
  // piValue = 3.15;         // ❌ Compile Error: Constant variables can't be assigned a value.


 
}
