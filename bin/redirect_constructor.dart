/// Redirect Constructor adalah constructor yang memanggil constructor lain di dalam class yang sama.
/// Di Dart, kita bisa membuat redirect constructor dengan cara menuliskan nama method yang sama dengan nama class.
/// Perhatikan contoh berikut:

// Example Class
class Customers {
  String name = "Danu"; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(this.name, this.age); // Constructor with Parameter "name" and "age"

  Customers.redirectConstructor(String name, int? age) : this(name, age); // Redirect Constructor

  void display() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

void main(){
  // Call Redirect Constructor
  var customer = Customers.redirectConstructor("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()
}