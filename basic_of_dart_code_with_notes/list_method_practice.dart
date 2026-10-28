void main() {

  //----- Add and Insert Methods ----------
  //add() —  add new element in last 
  List<String> fruits = ['Apple', 'Mango'];

  fruits.add('Banana');

  print(fruits);//Output: [Apple, Mango, Banana]



//2. addAll() -- Adds all elements from another collection to the end of a List.

  List<int> numbers = [10, 20];

  numbers.addAll([30, 40]);

  print(numbers);//Output: [10, 20, 30, 40]


  //3. insert() - Inserts a single element at a specified index.

  List<String> names = ['Aash', 'Rahul', 'Amit'];

  names.insert(1, 'Priya');

  print(names);//Output: [Aash, Priya, Rahul, Amit]

//---------------------

  //4. insertAll() - Inserts multiple elements at a specified index.
    List<int> numbers_ = [10, 20, 50];

  numbers_.insertAll(2, [30, 40]);

  print(numbers_);//Output: [10, 20, 30, 40, 50]



// ------ . Remove Methods -------

// 5. remove() Removes the first occurrence of a specified value from a List.
  

 List<int> numbers0 = [10, 20, 20, 30];

  numbers0.remove(20);

  print(numbers0);

  // 6.removeAt() --  Removes the element at a specified index and returns that element.
 List<String> fruits_ = ['Apple', 'Mango', 'Banana'];

  String removed = fruits.removeAt(1);

  print(removed);
  print(fruits_);



// 7. removeLast()- : Removes and returns the last element of a List.

List<int> numbers1 = [10, 20, 30];

  int removed_= numbers.removeLast();

  print(removed_);
  print(numbers1);

  // 8. removeWhere() -- Removes all elements that satisfy a given condition.

  List<int> numbers2 = [10, 15, 20, 25, 30];

  numbers2.removeWhere((n) => n > 20);

  print(numbers2);


// 9. clear() -- Removes all elements from a List.

  List<String> names1 = ['kash', 'Rahul', 'Amit'];

  names1.clear();

  print(names1);

 // -------------------- Search and Check Methods--------------------

 //10. contains() - Checks whether a List contains a specified element. 

 List<String> fruits_1 = ['Apple', 'Mango', 'Banana'];

  print(fruits_1.contains('Mango'));
  print(fruits_1.contains('Orange'));


//11. indexOf()-  : Returns the index of the first occurrence of an element. Returns -1 if the element is not found.
 List<String> names1_ = ['Aakash', 'Rahul', 'Amit'];

  print(names1_.indexOf('Rahul'));
  print(names1_.indexOf('Priya'));


// 12. where()  --  It returns the elements that satisfy the given condition. You can use `tolist()` to convert the result into a list.

List<int> numbers3 = [10, 15, 20, 25, 30];

  List<int> result =
      numbers3.where((n) => n >= 20).toList();

  print(result);



//------------- Sorting and Ordering Methods ----------------

// 13. sort() - Sorts the elements of a List in place.

List<int> num= [40, 10, 30, 20];

  num.sort();//Ascending Order ( default)

  print(num );//[10, 20, 30, 40]

  /*
  (Descending Order)
 num.sort((a, b) => b.compareTo(a));   [40, 30, 20, 10]

  */

  // 14. reversed  - Returns an Iterable that provides the elements in reverse order.

  List<int> num_ = [10, 20, 30, 40];

  print(num_.reversed.toList());//Property hai 


  // 15 shuffle() -- Randomly rearranges the elements of a List.
    List<int> numbers122 = [10, 20, 30, 40];

  numbers122.shuffle();

  print(numbers122);//Example output: [30, 10, 40, 20]


//16. replaceRange() -- Replaces the elements within a specified range with elements from another collection.
  List<int> list_num = [10, 20, 30, 40, 50];

  list_num.replaceRange(1, 3, [99, 88]);

  print(list_num);// change only index 1 and 2


/// ---------- . Transform and Calculation Methods ------------------
/// 
  // 17. map() -- Transforms each element of a collection and returns an Iterable of the results.

    List<int> map_numbers = [1, 2, 3, 4];

  List<int> map_result =
      map_numbers.map((n) => n * 2).toList();

  print(map_result);


//18. forEach()  ----  Executes a function for each element of a collection.


List<String> list_names = ['Aash', 'Rahul', 'Amit'];

  list_names.forEach((name) {
    print(name);
  });



// 19. any()      Returns true only if every element satisfies the given condition.


  List<int> _numbers = [10, 20, 30];

  print(_numbers.any((n) => n > 25));









}