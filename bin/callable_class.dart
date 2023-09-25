/// Callable class di Dart
/// Callable class adalah sebuah class yang bisa kita panggil seperti sebuah function.
/// Callable class biasanya digunakan ketika kita ingin membuat sebuah class yang bisa kita panggil seperti sebuah function.
/// Callable class mirip seperti function yang bisa kita panggil, namun callable class bisa memiliki state.

// example callable class
class Person {
  String name = ""; // String Field (can't be null)

  // Callable Class
  String call(String name) { // Method call() (same as function)
    return "Hello $name, my name is ${this.name}"; // Return String
  }
}

class Sum {
  int call(int a, int b) { // Method call() (same as function)
    return a + b; // Return a + b
  }
}

class Substract {
  int a = 0; // Integer Field (can't be null)
  int b = 0;

  int call() { // Method call() (same as function)
    return a - b; // Return a - b
  }
}

void main() {
  var person = Person(); // Create Object
  person.name = "John"; // Set name
  print(person("Dart")); // Print "Hello Dart, my name is John"

  print("\n"); // New Line

  var sum = Sum(); // Create Object
  print(sum(10, 20)); // Print 30

  print("\n"); // New Line

  var example = Substract(); // Create Object
  example.a = 10; // Set value a
  example.b = 5; // Set value b
  print(example()); // Print 5 (because 10 - 5 = 5
}