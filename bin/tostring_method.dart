/// To String Method di Dart
/// To String Method adalah sebuah method yang digunakan untuk mengubah sebuah object menjadi sebuah String.
/// Biasanya, To String Method digunakan ketika kita ingin mengubah sebuah object menjadi sebuah String.
/// Di dalam Dart, kita dapat membuat To String Method dengan cara menambahkan method bernama toString() ke dalam sebuah class.
/// Perhatikan contoh berikut:

// Example Class
class Product{
  int? id; // Integer Field (can be null)
  String? name; // String Field (can be null)
  String? description; // String Field (can be null)
  int? _price; // Private Field (can't be accessed from outside the class)

  int? getPrice(){ // Get Price Method (return _price)
    return _price; // Return _price
  }

  // To String Method
  @override // Override toString() from Object Class (default class in Dart)
  String toString() { // Method toString() from Object Class (default class in Dart)
    return "Product {id: $id, name: $name, description: $description, price: $_price}"; // Return String
  }

}

void main(){

    // Example To String Method
    var product = Product(); // Create Object
    product.id = 1; // Set id
    product.name = "Smartphone"; // Set name
    product.description = "This is New Product in 2023"; // Set description
    product._price = 10000; // Set _price

    print(product); // Print product (Product {id: 1, name: Product 1, description: This is Product 1, price: 10000})
}