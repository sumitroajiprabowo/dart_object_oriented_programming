/// Interface di Dart
/// Interface adalah sebuah kontrak yang berisi daftar method yang harus diimplementasikan oleh sebuah class.
/// Interface biasanya digunakan ketika kita ingin membuat sebuah class yang memiliki method-method yang harus diimplementasikan oleh class-class lain.
/// Di dalam Dart, kita dapat membuat Interface dengan cara membuat sebuah abstract class yang hanya berisi method-method yang harus diimplementasikan oleh class-class lain.
/// Perhatikan contoh berikut:

class Car {
  String name = ""; // String Field (can't be null)
  int year = 0; // Integer Field (can't be null)

  void drive() { // Method
    print("Drive"); // Print "Drive"
  }

  int get age => DateTime.now().year - year; // Getter (return DateTime.now().year - year)
}

class HasBrand { // Class HasBrand
  String brand = ""; // String Field (can't be null)

  void printBrand() { // Method
    print(brand); // Print brand
  }
}

class Mobilio implements Car { // Implement Car Interface
  @override // Override name from Car Interface
  String name = "Mobilio"; // Call name from Car Interface and set it to "Mercedes"

  @override // Override year from Car Interface
  int year = 2021; // Call year from Car Interface and set it to 2021

  @override // Override drive() from Car Interface
  void drive() { // Method drive() from Car Interface (same as Car Class)
    print("Drive"); // Print "Drive" (same as Car Class)
  }

  @override // Override age from Car Interface
  int get age => DateTime.now().year - year; // Call age from Car Interface and set it to DateTime.now().year - year
}

class Xenia implements Car, HasBrand{ // Implement Multiple Interface (Car and HasBrand)
  @override // Override name from Car Interface
  String name = "Xenia"; // Call name from Car Interface and set it to "Mercedes"

  @override // Override year from Car Interface
  int year = 2022; // Call year from Car Interface and set it to 2021

  @override // Override drive() from Car Interface
  void drive() { // Method drive() from Car Interface (same as Car Class)
    print("Drive"); // Print "Drive" (same as Car Class)
  }

  @override // Override age from Car Interface
  int get age => DateTime.now().year - year; // Call age from Car Interface and set it to DateTime.now().year - year

  @override // Override brand from HasBrand Class
  String brand = "Daihatsu"; // Call brand from HasBrand Class and set it to "Daihatsu"

  @override // Override printBrand() from HasBrand Class
  void printBrand() { // Method printBrand() from HasBrand Class (same as HasBrand Class)
    print(brand); // Print brand (same as HasBrand Class)
  }
}

void main() {
  var car = Mobilio(); // Create Object from Mercedes Class
  print(car.name); // Print car.name (Mercedes)
  print(car.year); // Print car.year (2021)
  car.drive(); // Call car.drive() (Drive)
  print(car.age); // Print car.age (0)

  print("\n"); // New Line

  var car2 = Xenia(); // Create Object from Xenia Class
  print(car2.name); // Print car2.name (Xenia)
  print(car2.year); // Print car2.year (2021)
  car2.drive(); // Call car2.drive() (Drive)
  print(car2.age); // Print car2.age (0)
  car2.printBrand(); // Call car2.printBrand() (Toyota)
}