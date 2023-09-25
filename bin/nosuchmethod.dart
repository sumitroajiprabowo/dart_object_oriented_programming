import 'dart:mirrors';

/// No Such Method di Dart
/// No Such Method adalah sebuah method yang digunakan untuk menangani error ketika sebuah method tidak ditemukan.
/// Biasanya, No Such Method digunakan ketika kita ingin menangani error ketika sebuah method tidak ditemukan.
/// Di dalam Dart, kita dapat membuat No Such Method dengan cara menambahkan method bernama noSuchMethod() ke dalam sebuah class.
/// Perhatikan contoh berikut:

// Example Class No Such Method with Return Value (Dynamic Object) and Reflection (MirrorSystem.getName())
class Person{
  final String _name; // String Field (can be null)

  Person(this._name); // Constructor

  // No Such Method
  @override // Override noSuchMethod() from Object Class (default class in Dart)
  dynamic noSuchMethod(Invocation invocation) { // Method noSuchMethod() from Object Class (default class in Dart)
    print("You tried to use a non-existent method: ${invocation.memberName}"); // Print "You tried to use a non-existent method: {invocation.memberName}"
  }

}

// Example Class No Such Method with Arguments (Positional Arguments) and Return Value (Dynamic Object) and Reflection
class Customer {
  String? name; // String Field (can be null)

  Customer(this.name); // Constructor

  // No Such Method
  @override // Override noSuchMethod() from Object Class (default class in Dart)
  dynamic noSuchMethod(Invocation invocation) { // Method noSuchMethod() from Object Class (default class in Dart)
    var method = invocation.memberName; // Get method name
    var arguments = invocation.positionalArguments; // Get arguments
    print("You tried to use a non-existent method: $method with arguments $arguments"); // Print "You tried to use a non-existent method: $method with arguments $arguments"
  }
}

// Example Class using No Such Method for Query Builder (Repository Pattern) using Dynamic Object (No Type Safety) and Reflection
class Repository{
  final String _name; // String Field (can't be null)

  Repository(this._name); // Constructor

  // No Such Method
  @override // Override noSuchMethod() from Object Class (default class in Dart)
  dynamic noSuchMethod(Invocation invocation) { // Method noSuchMethod() from Object Class (default class in Dart)
    var column = MirrorSystem.getName(invocation.memberName); // Get column (method name
    var value = invocation.positionalArguments.first; // Get value
    print("select * from $_name where $column = '$value'"); // Print "select * from $name where $column = '$value'"
  }
}

// Example class No Such Method with Abstract Class (Interface)
abstract class Eat{
  void eat(); // Abstract Method
}

class Cat implements Eat{
  @override // Override eat() from Animal Interface
  void eat() { // Method eat() from Animal Interface (same as Animal Class)
    print("Cat Eat"); // Print "Cat Eat" (same as Animal Class)
  }
}

abstract class MotorCategory{ // Abstract Class (Interface)
  id(int id); // Abstract Method
  name(String name); // Abstract Method
  cc(int cc); // Abstract Method
}

class Motor extends MotorCategory{ // Implement MotorCategory Interface
  final int _id; // Integer Field (can't be null)

  Motor(this._id); // Constructor

  // No Such Method with Abstract Class (Interface)
  @override // Override noSuchMethod() from Object Class (default class in Dart)
  dynamic noSuchMethod(Invocation invocation) { // Method noSuchMethod() from Object Class (default class in Dart)
    // var method = invocation.memberName; // Get method name without Reflection
    var method = MirrorSystem.getName(invocation.memberName); // Get method name (using Reflection) (MirrorSystem.getName())
    var arguments = invocation.positionalArguments.first; // Get arguments
    print("You tried to use a non-existent method: $method with arguments $arguments"); // Print "You tried to use a non-existent method: $method with arguments $arguments"
  }
}

// example noSuchMethod() with Interface
// class Motor implements MotorCategory{
//   @override // Override id() from MotorCategory Interface
//   void id(int id) { // Method id() from MotorCategory Interface (same as MotorCategory Class)
//     print("id($id)"); // Print "id($id)" (same as MotorCategory Class)
//   }

//   @override // Override name() from MotorCategory Interface
//   void name(String name) { // Method name() from MotorCategory Interface (same as MotorCategory Class)
//     print("name($name)"); // Print "name($name)" (same as MotorCategory Class)
//   }

//   @override // Override cc() from MotorCategory Interface
//   void cc(int cc) { // Method cc() from MotorCategory Interface (same as MotorCategory Class)
//     print("cc($cc)"); // Print "cc($cc)" (same as MotorCategory Class)
//   }
// }

void main(){

    dynamic person = Person("John"); // Create Object (using Dynamic Object (No Type Safety))
    person.name("haha"); // Call id(2) (You tried to use a non-existent method: Symbol("id")

    print("\n"); // New Line

    dynamic customer = Customer("John"); // Create Object (using Dynamic Object (No Type Safety))
    customer.id(2); // Call id(2) (You tried to use a non-existent method: Symbol("id") with arguments [2])
    customer.username("John"); // Call name("John") (You tried to use a non-existent method: Symbol("name") with arguments [John])

    print("\n"); // New Line

    dynamic repository = Repository("users"); // Create Object (using Dynamic Object (No Type Safety))
    repository.username("John"); // Call findByName("John") (select * from users where name = 'John')
    repository.email("johndoe@gmail.com"); // Call findByEmail("johndoe@gmail.com") (select * from users where email = 'johndoe@gmail.com')

    print("\n"); // New Line

    var cat = Cat(); // Create Object
    cat.eat(); // Call eat() (Cat Eat)

    print("\n"); // New Line

    MotorCategory motor = Motor(1); // Create Object (using Abstract Class (Interface)) (can't use var because it's an Abstract Class (Interface))
    motor.id(1); // Call id(1) (You tried to use a non-existent method: Symbol("id") with arguments [1])
    motor.name("Honda"); // Call name("Honda") (You tried to use a non-existent method: Symbol("name") with arguments [Honda])
    motor.cc(150); // Call cc(150) (You tried to use a non-existent method: Symbol("cc") with arguments [150])

    /*
    Error because colour() is not defined in Motor Class
    You should define colour() in Motor Class
     */
    // motor.colour("red");

}