/// Dart memiliki fitur yang bernama initializer list.
/// Dengan initializer list, kita bisa menginisialisasi variabel final
/// atau variabel yang memiliki nilai default di constructor.

// Example Class
class Customers {
  String firstName; // String Field (can't be null)
  String lastName; // String Field (can't be null)
  String? fullName; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia";

  Customers(this.firstName, this.lastName, {this.age}); // Constructor

  // Initializer List
  Customers.initializerList(this.firstName, this.lastName, {this.age}); // Initializer List

  // Initializer List with Assert
  Customers.initializerListAssert(this.firstName, this.lastName, {this.age}) : assert(firstName != null, "First Name can't be null"); // Assert


  void display() => print("Name: $firstName $lastName\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}

void main(){
  // Call Initializer List
  var customer = Customers.initializerList("John", "Doe", age: 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()

  print("\n"); // New Line

  // Call Initializer List with Assert
  var customer2 = Customers.initializerListAssert("John", "Doe", age: 30); // Object with Fields "name" and "age"
  customer2.display(); // Calling Method display()
}