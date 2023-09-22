/// Field Overriding di Dart
/// Field Overriding adalah kemampuan untuk mendefinisikan ulang field yang sudah ada di parent class.
/// Di Dart, kita bisa membuat field overriding dengan cara menuliskan nama field yang sama dengan nama field di parent class.
/// Perhatikan contoh berikut:


// Example Class
class Customers {
  String? firstName = "Danu"; // String Field (can be null)
  String? lastName = "Subahri"; // String Field (can be null)

  void fullName() => print("Full Name: $firstName $lastName"); // Method Expression Body

  // Method Overriding
  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

class Customers2 extends Customers {
  @override // Annotation
  String? firstName = "Dawu"; // Field Overriding from Parent Class Customers

  @override // Annotation
  String? lastName = "Umbara"; // Field Overriding from Parent Class Customers

  @override // Annotation
  void fullName() => print("Full Name: $firstName $lastName"); // Method Overriding from Parent Class Customers // Method Expression Body

}

void main(){
  // Call Constructor
  var customer = Customers2(); // Object with Fields "firstName" and "lastName"
  print("First Name: ${customer.firstName}"); // Print Field firstName
  print("Last Name: ${customer.lastName}"); // Print Field lastName
  customer.fullName(); // Calling Method fullName()
}