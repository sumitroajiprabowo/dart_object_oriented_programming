/// Getter and Setter di Dart
/// Getter dan Setter adalah sebuah cara untuk mengakses dan mengubah nilai dari sebuah field di dalam sebuah class.
/// Getter dan Setter biasanya digunakan ketika kita ingin mengubah nilai dari sebuah field dengan melakukan validasi terlebih dahulu.
/// Getter berfungsi untuk mengambil nilai dari sebuah field, sedangkan Setter berfungsi untuk mengubah nilai dari sebuah field.
/// Setter biasanya digunakan untuk melakukan validasi terlebih dahulu sebelum mengubah nilai dari sebuah field.
/// Di dalam Dart, kita dapat membuat Getter dan Setter dengan cara menambahkan kata kunci get dan set di depan nama method.
/// Perhatikan contoh berikut:

// import rectangle.dart file from example folder
import 'example/rectangle.dart';


// Example Class
class Shape {
  double _width = 0; // Private Field (can't be accessed from outside the class)
  double _height = 0; // Private Field (can't be accessed from outside the class)

  // Getter
  double get width => _width; // Get width (return _width)

  // Setter
  set width(double value) { // Set width
    if (value < 0) { // Check if value is less than 0
      value *= -1; // Make value positive
    }
    _width = value; // Set _width to value
  }

  // Getter
  double get height => _height; // Get height (return _height)

  // Setter
  set height(double value) { // Set height
    if (value < 0) { // Check if value is less than 0
      value *= -1; // Make value positive
    }
    _height = value; // Set _height to value
  }

  // Getter
  double get area => _width * _height; // Get area (return _width * _height)
}

void main() {
  var rectangle = Shape(); // Create Object
  rectangle.width = 10; // Set width
  rectangle.height = 2; // Set height

  print(rectangle.area); // Print area (20)

  print("\n"); // New Line

  var rectangle2 = Rectangle(); // Create Object from Rectangle Class (example/rectangle.dart)
  rectangle2.width = 20; // Set width
  rectangle2.height = 2; // Set height

  print(rectangle2.area); // Print area (40)
}