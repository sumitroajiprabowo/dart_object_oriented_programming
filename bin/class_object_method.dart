/// Class Object Method di Dart
/// Class Object Method adalah kemampuan untuk mendefinisikan method di dalam class.
/// Setiap object yang dibuat dari class, akan memiliki method yang sama.
/// Setiap method yang ada di dalam class, akan memiliki akses ke semua field yang ada di dalam class.

// Example Class
class Quantity {}

void main(){
  // Call Constructor
  var quantity = 100; // Object
  print(quantity.toString()); // Change to String with Method toString() | toString() is a method of the Object class. It is used to convert the Dart object to a String representation. It returns a string representation of the object.
  print(quantity.hashCode); // Change to HashCode with Method hashCode | hashCode() is a method of the Object class. It is used to get the hash code of an object. It returns an integer value representing the hash code of the object.
  print(quantity.runtimeType); // Change to RuntimeType with Method runtimeType | runtimeType() is a method of the Object class. It is used to get the runtime type of an object. It returns a Type object representing the runtime type of the object.

  print("\n"); // New Line

  // Call Constructor
  var quantity2 = Quantity(); // Object with Class Quantity (same as quantity)
  print(quantity2.toString()); // Print Method toString
  print(quantity2.hashCode); // Print Method hashCode
  print(quantity2.runtimeType); // Print Method runtimeType
}