import 'callable_class.dart';

/// Typedef di Dart
/// Typedef adalah sebuah alias untuk sebuah tipe data.
/// Biasanya, Typedef digunakan ketika kita ingin membuat sebuah alias untuk sebuah tipe data.
/// Atau ketika kita ingin membuat sebuah function yang memiliki parameter dengan tipe data yang sama.

// Example Typedef
class Sum {

  int call(int a, int b) { // Method call() (same as function)
    return a + b; // Return a + b
  }
}

// Example Typedef
typedef Total = Sum; // Typedef Total = Sum (Sum is Callable Class)
typedef Jumlah = Sum; // Typedef Jumlah = Sum (Sum is Callable Class)


// Example Typedef function with parameter
typedef Filter = String Function(String); // Typedef Filter = String Function(String)

void sayHello(String name, Filter filter){ // Function sayHello with parameter name and filter
  print("Hello ${filter(name)}"); // Print "Hello {filter(name)}"
}


/*
Rekomendasi menggunakan Function Type Alias daripada Typedef
Sebab Function Type Alias lebih fleksibel dibandingkan Typedef.
Perhatikan contoh berikut:
 */
void sayGoodBye(String name, String Function(String) filter){ // Function sayGoodBye with parameter name and filter
  print("Good Bye ${filter(name)}"); // Print "Good Bye {filter(name)}"
}

void main(){

  var total = Total(); // Create Object
  print(total(10, 20)); // Print 30

  print("\n"); // New Line

  var jumlah = Jumlah(); // Create Object
  print(jumlah(10, 20)); // Print 30

  print("\n"); // New Line

  sayHello("Dart", (name) => name.toUpperCase()); // Print "Hello DART"

  print("\n"); // New Line

  sayGoodBye("Dart", (name) => name.toUpperCase()); // Print "Good Bye DART"

}