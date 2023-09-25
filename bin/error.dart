import 'enum.dart';

/// Error di Dart
/// Error adalah sebuah error yang terjadi ketika program kita sedang berjalan.
/// Error biasanya digunakan ketika kita ingin menangani error yang terjadi ketika program kita sedang berjalan.
/// Di dalam Dart jika terjadi error maka kita harus memperbaikinya terlebih dahulu sebelum menjalankan program kita.
/// Perhatikan contoh berikut:

void main() {
  var listOfStudent = ["Danu", "Dian", "Dani"];

  // print(listOfStudent[10]); // Error because index out of range

  if (listOfStudent.length > 10) {
    print(listOfStudent[10]);
  } else {
    print("Index out of range");
  }
}