/// Static di Dart
/// Static adalah sebuah keyword yang digunakan untuk membuat sebuah field atau method menjadi milik class, bukan milik object.
/// Biasanya, Static digunakan ketika kita ingin membuat sebuah field atau method yang bisa diakses tanpa harus membuat object terlebih dahulu.
/// Di dalam Dart, kita dapat membuat Static dengan cara menambahkan kata kunci static di depan nama field atau method.
/// Perhatikan contoh berikut:

// example class (without Static Field and Static Method)
class Teacher{
  int nip = 1234567890; // Field (can't be accessed without creating an object)
  String name = "John"; // Field (can't be accessed without creating an object)
}

// Example Class (with Static Field and Static Method)
class Student{
  static final int nisn = 1234567890; // Static Field (can be accessed without creating an object) (can't be changed because final)
  static final String name = "John"; // Static Field (can be accessed without creating an object) (can't be changed because final)
}

/*
Static Method adalah sebuah method yang digunakan untuk mengakses Static Field.
Biasanya, Static Method digunakan ketika kita ingin mengakses Static Field tanpa harus membuat object terlebih dahulu.
 */

// Example static method
class Student2{
  static final int nisn = 1234567890; // Static Field (can be accessed without creating an object) (can't be changed because final)
  static final String name = "John"; // Static Field (can be accessed without creating an object) (can't be changed because final)

  static void printStudent(){ // Static Method (can be accessed without creating an object)
    print("NISN: $nisn"); // Print nisn
    print("Name: $name"); // Print name
  }
}

class MathSum{
  static int sum(int a, int b){ // Static Method (can be accessed without creating an object)
    return a + b; // Return a + b
  }
}


void main(){

  var teacher = Teacher(); // Create Object
  print(teacher.nip); // Print nip (1234567890)
  print(teacher.name); // Print name (John)

  print("\n"); // New Line

  /*
  Dengan static field, kita dapat mengakses field tanpa harus membuat object terlebih dahulu.
  Kita dapat mengakses field dengan cara menambahkan nama class di depan nama field.
   */
    // Example Static
    print(Student.nisn); // Print nisn (1234567890)
    print(Student.name); // Print name (John)

  print("\n"); // New Line

  /*
  Dengan static method, kita dapat mengakses static field tanpa harus membuat object terlebih dahulu.
  Kita dapat mengakses static field dengan cara menambahkan nama class di depan nama method.
   */
    // Example Static Method
  Student2.printStudent(); // Print nisn and name (1234567890 and John)

  print("\n"); // New Line

  // Example Static Method
  print(MathSum.sum(10, 20)); // Print 30
}