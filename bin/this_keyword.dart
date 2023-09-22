/// This Keyword in Dart Programming Language
/// This keyword adalah keyword yang digunakan untuk mereferensikan object yang sedang dibuat.
/// Di Dart, kita bisa menggunakan this keyword untuk mereferensikan object yang sedang dibuat.
/// Perhatikan contoh berikut:


// Example Class
class Customers {
  String name; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(this.name, this.age); // Constructor with Parameter "name" and "age" with this keyword

  void display() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body with this keyword

  void sayHello(String name) => print("Hello $name"); // Method Expression Body with Parameter "name" with this keyword
}

class Suppliers {
  String name = "Danu"; // String Field (can't be null)
  String? city; // String Field (can't be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Suppliers(this.name, this.city); // Constructor with Parameter "name" and "city" with this keyword
}

void main(){
  // Call Constructor
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()

  print("\n"); // New Line

  var supplier = Suppliers("John", "Jakarta"); // Object with Fields "name" and "city"
  print(supplier.name); // Calling Field name
  print(supplier.city); // Calling Field city

}