/// Metadata di Dart
/// Metadata adalah sebuah informasi yang bisa kita tambahkan di dalam sebuah class, function, atau variable.
/// Metadata biasanya digunakan ketika kita ingin menambahkan informasi tambahan di dalam sebuah class, function, atau variable.
/// Di dalam Dart, kita dapat membuat Metadata dengan cara menambahkan @ sebelum nama Metadata.
/// @Deprecated() adalah sebuah Metadata yang digunakan untuk memberitahu bahwa sebuah class, function, atau variable sudah tidak digunakan lagi.
/// @override adalah sebuah Metadata yang digunakan untuk memberitahu bahwa sebuah method sudah di-override.
/// Perhatikan contoh berikut:

abstract final class DateOnlyFormat {
  static DateTime dateOnly(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
}

/*
Metadata adalah sebuah informasi yang bisa kita tambahkan di dalam sebuah class, function, atau variable.
Metadata biasanya digunakan ketika kita ingin menambahkan informasi tambahan di dalam sebuah class, function, atau variable.
Di dalam Dart, kita dapat membuat Metadata dengan cara menambahkan @ sebelum nama Metadata.
@Deprecated() adalah sebuah Metadata yang digunakan untuk memberitahu bahwa sebuah class, function, atau variable sudah tidak digunakan lagi.
@override adalah sebuah Metadata yang digunakan untuk memberitahu bahwa sebuah method sudah di-override.
 */

// Example Metadata
class Student{
  String name; // String Field (can be null)
  int age; // Integer Field (can't be null)

  @deprecated
  String? birthDate; // DateTime Field (can't be null)

  @Deprecated("Dont use Anymore") // Metadata @Deprecated (this class is deprecated)
  String? address; // String Field (can be null)

  Student(this.name, this.age, this.birthDate, this.address); // Constructor

  @override // Metadata @override (this method is override)
  String toString() { // Method toString() from Object Class (default class in Dart)
    return "Name: $name\nAge: $age\nBirth Date: $birthDate\nAddress: $address"; // Return String
  }
}

/*
Selain @deprecated dan @override, Dart juga memiliki beberapa Metadata lainnya seperti @factory, @immutable, @internal, @isTest, @literal, @mustCallSuper, @nonVirtual, @optionalTypeArgs, @protected, @required, @sealed, @visibleForOverriding, dan @visibleForTesting.
Kita juga bisa membuat Metadata sendiri dengan cara menambahkan nama Metadata di depan sebuah class, function, atau variable.
Perhatikan contoh berikut:
 */

// Example Metadata (Custom Metadata)
class Todo{
  final String title; // String Field (can't be null)
  final String description; // String Field (can't be null)

  const Todo(this.title, this.description); // Constructor

  @override // Metadata @override (this method is override)
  String toString() { // Method toString() from Object Class (default class in Dart)
    return "Title: $title\nDescription: $description"; // Return String
  }
}

class Customer{
  @Todo("Create a new class", "Create a new class Customer") // Custom Metadata @Todo
  void buyCar(){ // Method buyCar()
    print("Buy a new car"); // Print "Buy a new car"
  }
}

void main(){

  // DateTime only Date format (without Time) like 2019-02-23
  var birthDate = DateOnlyFormat.dateOnly(DateTime.now()).toString().split(" ")[0]; // 2019-02-23

  var student = Student("John", 18, birthDate, "New York"); // Create Object

  print(student); // Print student (Name: John, Age: 18, Address: New York)

  print("\n"); // New Line

  var customer = Customer(); // Create Object
  customer.buyCar(); // Call method buyCar() (Print "Buy a new car")

}