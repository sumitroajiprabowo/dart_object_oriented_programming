/// Named Constructor adalah constructor yang memiliki nama.
/// Di Dart, kita bisa membuat named constructor dengan cara menuliskan nama method yang sama dengan nama class.
/// Perhatikan contoh berikut:

// Example Class
class Customers {
  String name = "Danu"; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(this.name, this.age); // Constructor with Parameter "name" and "age"

  Customers.fromMap(Map<String, dynamic> map) { // Named Constructor with Parameter "map" with type Map<String, dynamic>
    name = map['name']; // Assign Field name
    age = map['age']; // Assign Field age
  }

  Customers.fromJson(Map<String, dynamic> json) { // Named Constructor with Parameter "json" with type Map<String, dynamic>
    name = json['name']; // Assign Field name
    age = json['age']; // Assign Field age
  }

  void display() => print("Name: $name\nAge: $age\nCountry: $country"); // Method Expression Body

  void sayHello(String name) => print("Hello $name"); // Method Expression Body
}


void main(){
  // Call Constructor
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  customer.sayHello("John"); // Calling Method sayHello()

  print("\n"); // New Line

  // Call Named Constructor
  var customer2 = Customers.fromMap({"name": "Lily", "age": 25}); // Object with Fields "name" and "age"
  customer2.display(); // Calling Method display()

  print("\n"); // New Line

  // Call Named Constructor
  var customer3 = Customers.fromJson({"name": "Lily", "age": 25}); // Object with Fields "name" and "age"
  customer3.display(); // Calling Method display()

}