/*
What is a List?
A List is a collection that stores multiple values in a single variable.

Suppose tumhe 5 students ke names store karne hain. Har student ke liye alag variable banane ke bajay, 
ek List use kar sakte ho.

String student1 = "Aman";
String student2 = "Riya";
String student3 = "Rahul";

List<String> students = [
  "Aman",
  "Riya",
  "Rahul",
];
//////// types of list ////////
1. Fixed-length List
A fixed-length List has a size that cannot be changed after creation.
void main() {
  List<int> numbers = List.filled(3, 0);

  numbers[0] = 10;
  numbers[1] = 20;
  numbers[2] = 30;

  print(numbers);
}


2. Growable List
A growable List can increase or decrease in size after creation.

void main() {
  List<int> numbers = [10, 20, 30];

  numbers.add(40);
  numbers.remove(20);

  print(numbers);
}

------------Data type  in list --------------
A. List<int> — Integers
List<int> ages = [18, 20, 22];

List<String> — Text
List<String> fruits = ["Apple", "Mango"];


List<double> — Decimal numbers
List<double> prices = [10.5, 20.75];


List<bool> — True/False
List<bool> status = [true, false, true];

. List<dynamic> — Mixed types
List<dynamic> data = ["Aansh", 22, true];


# 📘 Dart List Methods – Complete Notes with Examples

Beginner to Advanced | Dart Programming | Flutter Development | Interview Preparation

Dart mein `List` ka use multiple values ko ek variable mein store karne ke liye hota hai. Is notes mein List ke important methods, properties, operators aur collection functions ko priority order mein examples ke saath cover kiya gaya hai.

## 1. List Basics

dart

```
void main() {
  List<int> numbers = [10, 20, 30];
  List<String> names = ['Aman', 'Rahul', 'Priya'];

  print(numbers);    // [10, 20, 30]
  print(names[0]);   // Aman
  print(numbers[1]); // 20
}
```

- `List<int>` — integers ki List.
- `List<String>` — strings ki List.
- Index `0` se start hota hai.
- List ordered hoti hai aur duplicate values rakh sakti hai.

## 2. Items Add Karne Wale Methods

### 1. `add()`

List ke end mein ek item add karta hai.

dart

```
List<int> numbers = [10, 20, 30];

numbers.add(40);
print(numbers); // [10, 20, 30, 40]
```

### 2. `addAll()`

Multiple items add karta hai.

dart

```
List<int> numbers = [10, 20];

numbers.addAll([30, 40, 50]);
print(numbers); // [10, 20, 30, 40, 50]
```

### 3. `insert()`

Specific index par ek item add karta hai.

dart

```
List<String> names = ['Aman', 'Priya'];

names.insert(1, 'Rahul');
print(names); // [Aman, Rahul, Priya]
```

### 4. `insertAll()`

Specific index par multiple items add karta hai.

dart

```
List<int> numbers = [10, 40];

numbers.insertAll(1, [20, 30]);
print(numbers); // [10, 20, 30, 40]
```

## 3. Items Remove Karne Wale Methods

### 5. `remove()`

Value ki pehli matching occurrence remove karta hai.

dart

```
List<int> numbers = [10, 20, 30, 20];

numbers.remove(20);
print(numbers); // [10, 30, 20]
```

### 6. `removeAt()`

Index ke basis par item remove karta hai.

dart

```
List<int> numbers = [10, 20, 30];

numbers.removeAt(1);
print(numbers); // [10, 30]
```

### 7. `removeLast()`

Last item remove karta hai aur removed item return karta hai.

dart

```
List<int> numbers = [10, 20, 30];

int removed = numbers.removeLast();

print(removed); // 30
print(numbers); // [10, 20]
```

### 8. `removeWhere()`

Condition match karne wale saare items remove karta hai.

dart

```
List<int> numbers = [10, 15, 20, 25, 30];

numbers.removeWhere((n) => n > 20);
print(numbers); // [10, 15, 20]
```

### 9. `retainWhere()`

Sirf condition match karne wale items rakhta hai.

dart

```
List<int> numbers = [10, 15, 20, 25, 30];

numbers.retainWhere((n) => n >= 20);
print(numbers); // [20, 25, 30]
```

### 10. `clear()`

List ke saare items remove karta hai.

dart

```
List<int> numbers = [10, 20, 30];

numbers.clear();
print(numbers); // []
```

## 4. Search Aur Checking Methods

### 11. `contains()`

Check karta hai ki item present hai ya nahi.

dart

```
List<String> fruits = ['Apple', 'Mango', 'Banana'];

print(fruits.contains('Mango'));  // true
print(fruits.contains('Grapes')); // false
```

### 12. `indexOf()`

First matching item ka index return karta hai. Item nahi mile to `-1` deta hai.

dart

```
List<int> numbers = [10, 20, 30, 20];

print(numbers.indexOf(20)); // 1
print(numbers.indexOf(50)); // -1
```

### 13. `lastIndexOf()`

Last matching item ka index return karta hai.

dart

```
List<int> numbers = [10, 20, 30, 20];

print(numbers.lastIndexOf(20)); // 3
```

### 14. `firstWhere()`

Condition match karne wala pehla item return karta hai.

dart

```
List<int> numbers = [5, 12, 18, 25];

int result = numbers.firstWhere(
  (n) => n > 15,
  orElse: () => -1,
);

print(result); // 18
```

### 15. `lastWhere()`

Condition match karne wala aakhri item return karta hai.

dart

```
List<int> numbers = [5, 12, 18, 25];

int result = numbers.lastWhere((n) => n < 20);

print(result); // 18
```

Agar matching item nahi milta, to `orElse` specify na hone par error aa sakta hai.

### 16. `singleWhere()`

Condition match karne wala exactly ek item return karta hai.

dart

```
List<int> numbers = [10, 20, 30];

int result = numbers.singleWhere((n) => n == 20);

print(result); // 20
```

Zero ya multiple matching items hone par, default behavior mein `StateError` aata hai.

### 17. `any()`

Kam se kam ek item condition match karta hai to `true` return karta hai.

dart

```
List<int> numbers = [1, 3, 5, 8];

print(numbers.any((n) => n.isEven)); // true
```

### 18. `every()`

Saare items condition match karte hain to `true` return karta hai.

dart

```
List<int> numbers = [2, 4, 6, 8];

print(numbers.every((n) => n.isEven)); // true
```

## 5. List Properties Aur Elements Access Karna

### 19. `length`

Total elements count karta hai.

dart

```
List<int> numbers = [10, 20, 30];

print(numbers.length); // 3
```

### 20. `isEmpty`

List empty hai ya nahi check karta hai.

dart

```
List<int> numbers = [];

print(numbers.isEmpty); // true
```

### 21. `isNotEmpty`

List mein kam se kam ek element hai ya nahi check karta hai.

dart

```
List<int> numbers = [10];

print(numbers.isNotEmpty); // true
```

### 22. `first`

Pehla element return karta hai.

dart

```
List<int> numbers = [10, 20, 30];

print(numbers.first); // 10
```

### 23. `last`

Last element return karta hai.

dart

```
List<int> numbers = [10, 20, 30];

print(numbers.last); // 30
```

### 24. `elementAt()`

Specified index ka element return karta hai.

dart

```
List<String> names = ['Aman', 'Rahul', 'Priya'];

print(names.elementAt(1)); // Rahul
```

### 25. `getRange()`

Specified range ke elements ka iterable return karta hai. End index excluded hota hai.

dart

```
List<int> numbers = [10, 20, 30, 40, 50];

print(numbers.getRange(1, 4).toList());
// [20, 30, 40]
```

### 26. `sublist()`

List ka selected portion ek nayi List ke roop mein return karta hai.

dart

```
List<int> numbers = [10, 20, 30, 40, 50];

print(numbers.sublist(1, 4));
// [20, 30, 40]
```

## 6. Sorting Aur Order Change Karna

### 27. `sort()`

List ko sort karta hai aur original List modify hoti hai.

dart

```
List<int> numbers = [5, 2, 8, 1, 3];

numbers.sort();
print(numbers); // [1, 2, 3, 5, 8]
```

Descending order:

dart

```
numbers.sort((a, b) => b.compareTo(a));
print(numbers); // [8, 5, 3, 2, 1]
```

Strings ko alphabetically sort karna:

dart

```
List<String> names = ['Rahul', 'Aman', 'Priya'];

names.sort();
print(names); // [Aman, Priya, Rahul]
```

### 28. `reversed`

Elements ko reverse order mein access karne ke liye iterable deta hai. Original List modify nahi hoti.

dart

```
List<int> numbers = [10, 20, 30];

print(numbers.reversed.toList());
// [30, 20, 10]
```

### 29. `shuffle()`

Elements ka order randomly rearrange karta hai.

dart

```
List<int> numbers = [10, 20, 30, 40];

numbers.shuffle();
print(numbers); // Example: [30, 10, 40, 20]
```

Har execution mein output alag ho sakta hai.

## 7. Filtering Aur Transformation Methods

### 30. `where()`

Condition match karne wale elements select karta hai.

dart

```
List<int> numbers = [10, 15, 20, 25, 30];

List<int> result = numbers
    .where((n) => n > 20)
    .toList();

print(result); // [25, 30]
```

### 31. `map()`

Har element ko transform karta hai.

dart

```
List<int> numbers = [1, 2, 3, 4];

List<int> result = numbers
    .map((n) => n * 2)
    .toList();

print(result); // [2, 4, 6, 8]
```

### 32. `forEach()`

Har element par operation perform karta hai.

dart

```
List<String> names = ['Aman', 'Rahul', 'Priya'];

names.forEach((name) {
  print(name);
});
```

### 33. `expand()`

Nested iterables ke elements ko ek single iterable mein combine karta hai.

dart

```
List<List<int>> numbers = [
  [1, 2],
  [3, 4],
  [5, 6],
];

List<int> result = numbers
    .expand((list) => list)
    .toList();

print(result); // [1, 2, 3, 4, 5, 6]
```

### 34. `take()`

Shuru ke specified number of elements leta hai.

dart

```
List<int> numbers = [10, 20, 30, 40, 50];

print(numbers.take(3).toList());
// [10, 20, 30]
```

### 35. `skip()`

Shuru ke specified number of elements skip karta hai.

dart

```
List<int> numbers = [10, 20, 30, 40, 50];

print(numbers.skip(2).toList());
// [30, 40, 50]
```

### 36. `takeWhile()`

Jab tak condition true hoti hai, tab tak elements leta hai. Pehli baar condition false hote hi ruk jata hai.

dart

```
List<int> numbers = [2, 4, 6, 7, 8, 10];

print(numbers.takeWhile((n) => n.isEven).toList());
// [2, 4, 6]
```

### 37. `skipWhile()`

Jab tak condition true hoti hai, tab tak elements skip karta hai. Condition pehli baar false hone ke baad baaki elements leta hai.

dart

```
List<int> numbers = [2, 4, 6, 7, 8, 10];

print(numbers.skipWhile((n) => n.isEven).toList());
// [7, 8, 10]
```

### 38. `fold()`

Initial value se calculation start karta hai aur final result return karta hai.

dart

```
List<int> numbers = [1, 2, 3, 4];

int sum = numbers.fold(
  0,
  (total, n) => total + n,
);

print(sum); // 10
```

### 39. `reduce()`

List ke elements ko combine karke ek result return karta hai. Ismein initial value nahi deni padti.

dart

```
List<int> numbers = [1, 2, 3, 4];

int sum = numbers.reduce((a, b) => a + b);

print(sum); // 10
```

Important: `reduce()` empty List par error deta hai; `fold()` initial value ke saath empty List handle kar sakta hai.

## 8. Conversion Aur Duplicate Removal

### 40. `toList()`

Iterable ko List mein convert karta hai.

dart

```
List<int> numbers = [1, 2, 3, 4];

List<int> result = numbers
    .where((n) => n > 2)
    .toList();

print(result); // [3, 4]
```

### 41. `toSet()`

Unique elements wala Set return karta hai.

dart

```
List<int> numbers = [10, 20, 10, 30, 20];

print(numbers.toSet()); // {10, 20, 30}
```

Duplicates remove karke List:

dart

```
List<int> unique = numbers.toSet().toList();

print(unique); // [10, 20, 30]
```

### 42. `asMap()`

List ko index-value mapping mein convert karta hai.

dart

```
List<String> names = ['Aman', 'Rahul', 'Priya'];

print(names.asMap());
// {0: Aman, 1: Rahul, 2: Priya}
```

### 43. `join()`

List ke elements ko ek String mein combine karta hai.

dart

```
List<String> names = ['Aman', 'Rahul', 'Priya'];

print(names.join(', '));
// Aman, Rahul, Priya
```

Use: Names ko comma-separated format mein display karna.

## 9. Advanced List Creation Methods

### 44. `List.generate()`

Index ya formula ke basis par List generate karta hai.

dart

```
List<int> numbers = List.generate(5, (i) => i + 1);

print(numbers); // [1, 2, 3, 4, 5]
```

Squares generate karna:

dart

```
List<int> squares = List.generate(5, (i) => (i + 1) * (i + 1));

print(squares); // [1, 4, 9, 16, 25]
```

### 45. `List.filled()`

Specified length ki List banata hai aur har position par same value set karta hai.

dart

```
List<int> numbers = List.filled(4, 0);

print(numbers); // [0, 0, 0, 0]
```

Default mein fixed-length List banti hai, isliye `add()` aur `remove()` use nahi kar sakte.

### 46. `List.from()`

Existing iterable se nayi List banata hai.

dart

```
List<int> original = [10, 20, 30];
List<int> copy = List.from(original);

copy.add(40);

print(original); // [10, 20, 30]
print(copy);     // [10, 20, 30, 40]
```

### 47. `List.of()`

Typed iterable se nayi List banata hai.

dart

```
List<int> numbers = [10, 20, 30];

List<int> copy = List<int>.of(numbers);
copy.add(40);

print(copy); // [10, 20, 30, 40]
```

### 48. `List.unmodifiable()`

Aisi List banata hai jiske elements ko add, remove ya replace nahi kar sakte.

dart

```
List<int> numbers = List.unmodifiable([10, 20, 30]);

print(numbers); // [10, 20, 30]

// numbers.add(40); // Runtime error
```

### 49. `List.empty()`

Empty List banata hai. Default mein fixed-length hoti hai.

dart

```
List<int> numbers = List.empty();

print(numbers); // []
```

Growable empty List chahiye:

dart

```
List<int> numbers = List.empty(growable: true);

numbers.add(10);
print(numbers); // [10]
```

## 10. Spread Operator Aur Collection Control

### 50. Spread operator `...`

Ek List ke elements ko doosri List mein include karta hai.

dart

```
List<int> first = [1, 2, 3];
List<int> second = [4, 5, 6];

List<int> combined = [...first, ...second];

print(combined); // [1, 2, 3, 4, 5, 6]
```

### 51. Null-aware spread `...?`

Null List ko safely spread karne ke liye use hota hai.

dart

```
List<int>? numbers;

List<int> result = [...?numbers, 10, 20];

print(result); // [10, 20]
```

### 52. Collection `if`

Condition true hone par hi item add hota hai.

dart

```
bool isLoggedIn = true;

List<String> menu = [
  'Home',
  if (isLoggedIn) 'Profile',
  'Settings',
];

print(menu); // [Home, Profile, Settings]
```

### 53. Collection `for`

List banate samay loop se elements add karta hai.

dart

```
List<int> squares = [
  for (int i = 1; i <= 5; i++) i * i,
];

print(squares); // [1, 4, 9, 16, 25]
```

## 11. Quick Revision Table

| Method / Property | Use |
| --- | --- |
| `add()` | Ek item add |
| `addAll()` | Multiple items add |
| `insert()` | Index par item add |
| `insertAll()` | Index par multiple items add |
| `remove()` | Value se remove |
| `removeAt()` | Index se remove |
| `removeLast()` | Last item remove |
| `removeWhere()` | Condition se items remove |
| `retainWhere()` | Matching items retain |
| `clear()` | List empty |
| `contains()` | Item check |
| `indexOf()` | First matching index |
| `lastIndexOf()` | Last matching index |
| `firstWhere()` | First matching item |
| `lastWhere()` | Last matching item |
| `singleWhere()` | Exactly one matching item |
| `any()` | Koi ek item match kare |
| `every()` | Saare items match karein |
| `length` | Total elements |
| `isEmpty` | Empty check |
| `isNotEmpty` | Non-empty check |
| `first` / `last` | First / last item |
| `elementAt()` | Index se item |
| `getRange()` | Range ke elements |
| `sublist()` | List ka portion |
| `sort()` | Sort original List |
| `reversed` | Reverse-order iterable |
| `shuffle()` | Random order |
| `where()` | Filter |
| `map()` | Transform |
| `forEach()` | Har item par action |
| `expand()` | Nested iterables flatten |
| `take()` / `skip()` | Select / skip items |
| `takeWhile()` / `skipWhile()` | Condition-based selection |
| `fold()` | Initial value se combine |
| `reduce()` | Elements combine |
| `toList()` | Iterable ko List |
| `toSet()` | Unique elements |
| `asMap()` | Index-value mapping |
| `join()` | String mein combine |
| `List.generate()` | Pattern se List |
| `List.filled()` | Same initial values |
| `List.from()` / `List.of()` | Nayi List banana |
| `List.unmodifiable()` | Read-only List |
| `List.empty()` | Empty List |
| `...` / `...?` | Spread elements |
| Collection `if` / `for` | Dynamic List creation |

## 12. Interview ke Important Differences

1. `where()` vs `map()` — `where()` filter karta hai, `map()` transform karta hai.
2. `any()` vs `every()` — `any()` ko ek matching item chahiye, `every()` mein sabhi items match hone chahiye.
3. `fold()` vs `reduce()` — `fold()` initial value leta hai, `reduce()` nahi.
4. `remove()` vs `removeAt()` — Value-based removal vs index-based removal.
5. `sort()` vs `reversed` — `sort()` original List ko modify karta hai, `reversed` reverse-order iterable deta hai.
6. `take()` vs `skip()` — Shuru ke elements lena vs unhe chhodna.
7. `add()` vs `insert()` — End mein add karna vs specified index par add karna.
8. `toList()` vs `toSet()` — List conversion vs unique elements wala Set.
9. `List.filled()` vs `List.generate()` — Same initial value vs generated values.
10. `List.from()` vs `List.unmodifiable()` — Nayi modifiable List vs unmodifiable List.

## 13. Best Learning Order

- First priority: `add()`, `addAll()`, `remove()`, `removeAt()`, `contains()`, `length`, `isEmpty`, `sort()`.
- Second priority: `where()`, `map()`, `toList()`, `forEach()`, `any()`, `every()`, `indexOf()`.
- Third priority: `firstWhere()`, `take()`, `skip()`, `fold()`, `reduce()`, `reversed`.
- Advanced: Spread operator, collection `if/for`, `expand()`, `toSet()`, `List.generate()` aur `List.unmodifiable()`.

Final tip: Har method ka example DartPad mein run karo aur output samjho. Flutter mein API data display, search, filtering, dynamic menus aur list-based UI banate waqt ye concepts bahut kaam aayenge.






*/

void main() {
  List<String> fruits = ["Apple", "Banana", "Mango"];

  print(fruits.length);      // 3
  print(fruits.first);       // Apple
  print(fruits.last);        // Mango
  print(fruits.isEmpty);     // false
  print(fruits.contains("Banana")); // true



   // Add an element
  fruits.add("Mango");
                                                                                                               
  // Update an element
  fruits[0] = "Orange";

  // Remove an element by value
  fruits.remove("Banana");

// removes an element at a particular index.
    fruits.removeAt(1);


  print(fruits);





  
}