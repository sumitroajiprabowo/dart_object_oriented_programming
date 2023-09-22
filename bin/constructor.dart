/// Constructor adalah method yang pertama kali dijalankan ketika kita membuat object dari sebuah class.
/// Constructor biasanya digunakan untuk menginisialisasi object dari sebuah class.
/// Di Dart, kita bisa membuat constructor dengan cara menuliskan nama method yang sama dengan nama class.


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
  // Call Constructor
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()
}