import 'dart:ffi';

/// Enum di Dart
/// Enum adalah sebuah tipe data yang berisi daftar konstanta.
/// Enum biasanya digunakan ketika kita ingin membuat sebuah tipe data yang berisi daftar konstanta.
/// Di dalam Dart, kita dapat membuat Enum dengan cara menambahkan keyword enum sebelum nama Enum.
/// Perhatikan contoh berikut:

// Example enum
enum StudentGender{
  male,
  female,
}

class Student{
  String name;
  StudentGender gender;

  Student(this.name, this.gender);
}

void main(){
  var student = Student("John", StudentGender.male); // Create Object

  print(student.name); // Print name (John)
  print(student.gender); // Print Gender

  print(StudentGender.values); // Print StudentGender.values (List of StudentGender)

  // Get value from enum
  print(student.gender.name);

}
