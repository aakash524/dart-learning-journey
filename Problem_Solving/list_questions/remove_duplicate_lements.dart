void main() {
  List<int> numbers = [1, 2, 2, 3, 1, 4, 3];

  List<int> unique = [];

  for (int n in numbers) {
    if (!unique.contains(n)) {
      unique.add(n);
    }
  }

  print(unique);
}