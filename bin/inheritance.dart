/// Inheritance adalah kemampuan sebuah class untuk mewariskan property dan methodnya ke class lain atau childnya.
/// Di Dart, kita bisa membuat inheritance dengan cara menambahkan keyword extends setelah nama class.
/// Perhatikan contoh berikut:


// Example Class with Inheritance
class Manager{ // Parent Class
  String? name; // String Field (can be null)

  void sayHello(String name){ // Method with Parameter "name"
    print("Hello $name, my name is Manager ${this.name}"); // Print String with Interpolation and Accessing Field name from Parent Class
  }
}

class Technician extends Manager{ // Child Class
  // All Field and Method from Parent Class will be inherited to Child Class
}

class VicePresident extends Manager{ // Child Class more than one from Parent Class is allowed
  // All Field and Method from Parent Class will be inherited to Child Class
}

class President extends VicePresident{ // Child Class from Child Class is allowed
  // All Field and Method from Parent Class will be inherited to Child Class
}

void main(){
  var manager = Manager(); // Object with Field "name"
  manager.name = "Budi"; // Assign Field name
  manager.sayHello("John"); // Calling Method sayHello()

  var technician = Technician(); // Object with Field "name"
  technician.name = "Agung"; // Assign Field name
  technician.sayHello("John"); // Calling Method sayHello()

  var vicePresident = VicePresident(); // Object with Field "name"
  vicePresident.name = "Danu"; // Assign Field name
  vicePresident.sayHello("John"); // Calling Method sayHello()

  var president = President(); // Object with Field "name"
  president.name = "Lily"; // Assign Field name
  president.sayHello("John"); // Calling Method sayHello()
}