/// Import adalah cara untuk mengakses library yang ada di dalam package
/// Di Dart, kita bisa mengakses library yang ada di dalam package dengan cara menuliskan nama package di dalam file pubspec.yaml
/// Perhatikan contoh berikut:

// Import categories.dart di folder example
import 'example/categories.dart' as categories; // Import categories.dart di folder example dengan alias categories
import 'example/packages.dart'; // Import packages.dart di folder example

// Import class Student from student.dart di folder example
import 'example/person.dart' show Student; // Import class Student from student.dart di folder example

void main(){
  // call categories.dart
  var category = categories.Categories(1, "Broadband");
  print(category.id);
  print(category.name);
  print(category);

  print("\n"); // New Line

  // call packages.dart
  var package = Packages(1, "HomeNet", "Package HomeNet 20Mbps");
  print(package.id);
  print(package.name);
  print(package.description);
  print(package);

  print("\n"); // New Line

  // call student class from person.dart
  var student = Student("1", "Doe", 19);
  print(student.studentId);
  print(student.name);
  print(student.age);
}