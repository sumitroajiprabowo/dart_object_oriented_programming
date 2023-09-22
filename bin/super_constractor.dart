/// Super Constructor di Dart
/// Super constructor adalah constructor yang digunakan untuk membuat object yang immutable.
/// Di Dart, kita bisa membuat super constructor dengan cara menambahkan keyword super diikuti dengan tanda kurung buka dan kurung tutup ().
/// Perhatikan contoh berikut:

// Example Class
class Person{
  String? name; // String Field (can be null)
  int? age; // Integer Field (can be null)

  Person(this.name, this.age); // Constructor with Parameter "name" and "age"

  void display() => print("Name: $name\nAge: $age"); // Method Expression Body
}

class Customers extends Person{
  final String country; // Final Field (can't be changed)

  Customers(String name, int age, this.country) : super(name, age); // Super Constructor with Parameter "name" and "age"

  @override // Annotation
  void display() {
    super.display(); // Access Method display() from Parent Class Person with Super Constructor
    print("Country: $country"); // Print Field country
  }
}

class Supplier extends Person{
  Supplier(String name, int age) : super(name, age) { // Super Constructor with Parameter "name" and "age"
    print("Supplier Name: $name and Age: $age"); // Print Field name and age
  }
}

void main(){
  // Call Super Constructor
  var customer = Customers("John", 30, "Indonesia"); // Object with Fields "name", "age", and "country"
  customer.display(); // Calling Method display()

  print("\n"); // New Line

  // Call Super Constructor with Null Value
  var supplier = Supplier("John", 30); // Object with Fields "name" and "age"
  supplier.display(); // Calling Method display()
}