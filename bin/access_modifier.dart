/// Access Modifier di Dart
/// Access Modifier adalah sebuah keyword yang digunakan untuk mengatur akses terhadap class, method, dan field.
/// Di Dart, ada 4 macam Access Modifier, yaitu:
/// - Public
/// - Private
/// - Protected
/// - Default
/// Secara default, semua class, method, dan field di Dart memiliki access modifier public.
/// Perhatikan contoh berikut:

// Example Class
class Products {
  String? name; // String Field (can be null)
  String? category; // String Field (can be null)
  late final int? _price; // Integer Field (can be null) // Private Field (can't be accessed from outside class)

  int? getPrice() => _price; // Private Method (can't be accessed from outside class)


}

/*
  Di dalam class Products, kita memiliki 3 buah field, yaitu:
  - name (public)
  - category (public)
  - _price (private)

  Dan 1 buah method, yaitu:
  - getPrice() (private)

  Perhatikan bahwa field _price dan method getPrice() memiliki access modifier private.
  Access modifier private berfungsi untuk membatasi akses terhadap field dan method dari luar class.
  Jika kita mencoba mengakses field _price dan method getPrice() dari luar class, maka akan menghasilkan error.
  Perhatikan contoh berikut:
 */

void main(){
  var products = Products(); // Object with Fields "name", "category", and "_price"
  products.name = "Product 1"; // Set Field name
  products.category = "Category 1"; // Set Field category
  // products._price = 10000; // Error: The setter '_price' isn't defined for the class 'Products'.
  print("Name: ${products.name}\nCategory : ${products.category}"); // Print Field name, category
}

