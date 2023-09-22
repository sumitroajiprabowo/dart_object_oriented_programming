/// Method Expression Body on Dart
/// Method Expression Body adalah cara penulisan method yang lebih singkat.
/// Dengan Method Expression Body, kita bisa menulisnya seperti ini: => void display() => { ... }
///
/// Perhatikan contoh berikut:
///

// Example Class
class Customers {
  String name; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(this.name, this.age); // Constructor

  void display() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

void main(){
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()

  print("\n"); // New Line

  Customers customer2 = Customers("Lily", 25); // Object with Fields "name" and "age"
  customer2.display(); // Calling Method

  print("\n"); // New Line

  // Change Field value
  customer2.name = "Lilyana"; // Change Field value
  customer2.age = 27; // Change Field value
  // customer2.country = "USA"; // Error: Can't change Final Field
  customer2.display(); // Calling Method
}