/// Polimorphism di Dart
/// Polimorphism adalah kemampuan untuk mendefinisikan ulang method yang sudah ada di parent class.
/// Di Dart, kita bisa membuat method overriding dengan cara menuliskan nama method yang sama dengan nama method di parent class.
/// Perhatikan contoh berikut:

// Example Class
class Categories {
  String? name; // String Field (can be null)
  Categories(this.name); // Constructor with Parameter "name"
}

// Example Class
class Packages extends Categories { // Class Packages extends Categories
  Packages(String? name) : super(name); // Constructor with Parameter "name" // Method Overriding from Parent Class Categories // Method Expression Body
}

// Example Class
class Products extends Packages { // Class Products extends Packages
  Products(String? name) : super(name); // Constructor with Parameter "name" // Method Overriding from Parent Class Packages // Method Expression Body
}

// Method Polymorphism
void myCategories(Categories categories) => print("My Category: ${categories.name}"); // Method Expression Body

void main(){

  Categories categories = Categories("Broadband"); // Object with Field "name"
  print(categories); // Print Class Categories
  print("Category: ${categories.name}"); // Print Field name
  Packages packages = Packages("HomeNet"); // Object with Field "name"
  print("Package: ${packages.name}"); // Print Field name
  Products products = Products("HomeNet 20Mbps"); // Object with Field "name"
  print("Product: ${products.name}"); // Print Field name

  print("\n"); // New Line

  myCategories(categories); // Calling Method myCategories() // Method Polymorphism
  myCategories(packages); // Calling Method myCategories() // Method Polymorphism
  myCategories(products); // Calling Method myCategories() // Method Polymorphism

  print("\n"); // New Line

  myCategories(Categories("Dedicated")); // Calling Method myCategories() // Method Polymorphism
  myCategories(Packages("Dedicated Internet")); // Calling Method myCategories() // Method Polymorphism
  myCategories(Products("Dedicated Internet 20Mbps")); // Calling Method myCategories() // Method Polymorphism

}