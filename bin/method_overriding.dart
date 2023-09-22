/// Method Overriding di Dart
/// Method Overriding adalah kemampuan untuk mendefinisikan ulang method yang sudah ada di parent class.
/// Di Dart, kita bisa membuat method overriding dengan cara menuliskan nama method yang sama dengan nama method di parent class.
/// Perhatikan contoh berikut:


// Example Class
class Customers {
  String? firstName; // String Field (can be null)
  String? lastName; // String Field (can be null)

  void fullName() => print("Full Name: $firstName $lastName"); // Method Expression Body

  // Method Overriding
  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

class Customers2 extends Customers {
  @override // Annotation
  void fullName() => print("Full Name: $firstName $lastName"); // Method Overriding from Parent Class Customers // Method Expression Body

  @override // Annotation
  void sayHello(String name) => print("Hello $name"); // Method Overriding from Parent Class Customers // Method Expression Body
}

void main(){
  // Call Constructor
  var customer = Customers2(); // Object with Fields "firstName" and "lastName"
  customer.firstName = "John"; // Assign Field firstName
  customer.lastName = "Doe"; // Assign Field lastName
  customer.fullName(); // Calling Method fullName()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()
}