/// Abstract class di Dart
/// Abstract class adalah sebuah class yang tidak bisa dijadikan sebagai object.
/// Biasanya sebagai kontrak untuk class-class lain yang akan mewarisi abstract class tersebut.
/// Perhatikan contoh berikut:

// Example Abstract Class
abstract class Categories {
  String? name; // String Field (can be null)

  Categories(this.name); // Constructor Expression Body in Abstract Class is not allowed because Abstract Class can't be instantiated
}

// Example Class
class Packages extends Categories { // Class Packages extends Categories
  Packages(String? name) : super(name); // Constructor with Parameter "name"
}

void main(){
  // var categories = Categories("Broadband"); // Error: The class 'Categories' is abstract and can't be instantiated.
  var packages = Packages("HomeNet"); // Object with Field "name"
  print("Package: ${packages.name}"); // Print Field name
}