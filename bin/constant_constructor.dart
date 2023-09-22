/// Constant constructor di Dart
/// Constant constructor adalah constructor yang digunakan untuk membuat object yang immutable.
/// Di Dart, kita bisa membuat constant constructor dengan cara menambahkan keyword const sebelum nama constructor.
/// Perhatikan contoh berikut:

// Example Class
class Customers {
  final String name; // String Field (can't be null) // Final Field (can't be changed)
  final int age; // Integer Field (can be null) // Final Field (can't be changed)
  final country = "Indonesia"; // Final Field (can't be changed)

  const Customers(this.name, this.age); // Constant Constructor with Parameter "name" and "age"

  void display() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

void main(){
  // Call Constant Constructor
  var customer = const Customers("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()
}