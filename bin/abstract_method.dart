/// Abstract Method di Dart
/// Abstract method adalah sebuah method yang tidak memiliki implementasi.
/// Biasanya sebagai kontrak untuk class-class lain yang akan mewarisi abstract class tersebut.
/// Perhatikan contoh berikut:

// Example Abstract Class
class Animal {
  String? name; // String Field (can be null)

  void eat() {
    // TODO: implement eat
  } // Method eat() from Abstract Class Animal
}

// Example Class with Abstract Method
class Dog extends Animal { // Class Dog extends Animal
  Dog(String? name) : super() { // Constructor with Parameter "name"
    this.name = name; // Set Field name
  }

  @override // Override Abstract Method
  void eat() { // Method eat() from Abstract Class Animal
    print("$name is eating"); // Print "$name is eating"
  }
}

void main(){
  var dog = Dog("Doggy"); // Object with Field "name"
  dog.eat(); // Calling Method eat() // Print "$name is eating"
}