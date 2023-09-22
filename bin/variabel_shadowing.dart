/// Variabel Shadowing adalah variabel yang memiliki nama yang sama dengan variabel yang ada di luar scope-nya.
/// Di Dart, kita bisa membuat variabel shadowing dengan cara menuliskan nama variabel yang sama dengan variabel yang ada di luar scope-nya.
/// Perhatikan contoh berikut:

// Example Class
class Customers {
  String name = "Danu"; // String Field (can't be null)
  int? age; // Integer Field (can be null)
  final country = "Indonesia"; // Final Field (can't be changed)

  Customers(String name, int? age) { // Constructor
    name = name; // Variabel Shadowing
    age = age; // Variabel Shadowing
  }

}

void main(){
  // Call Constructor
  var customer = Customers("John", 30); // Object with Fields "name" and "age"
  print(customer.name); // Calling Method display() // Output: Danu (not John) because of Variabel Shadowing
  print(customer.age); // Calling Method display() // Output: null (not 30) because of Variabel Shadowing
}