/// Extension method adalah method yang bisa kita tambahkan ke class yang sudah ada.
/// Di Dart, kita bisa menambahkan method ke class yang sudah ada dengan menggunakan extension method.
/// Banyak digunakan untuk menambahkan method ke class yang sudah ada di library.

// Example Class
class Customers {
  String name; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(this.name, this.age); // Constructor
}

// Extension Method
extension CustomersExtension on Customers {
  void display2() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello2(String name) => print("Hello $name"); // Method Expression Body
}

void main(){
  // Call extension method
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  customer.display2(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello2("John"); // Calling Method sayHello()
}