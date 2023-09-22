/// Super keyword di Dart
/// Super keyword adalah keyword yang digunakan untuk mengakses constructor, field, dan method dari parent class.
/// Di Dart, kita bisa menggunakan super keyword dengan cara menuliskan keyword super diikuti dengan tanda titik (.) dan diikuti dengan nama constructor, field, atau method yang ingin diakses.
/// Perhatikan contoh berikut:


// Example Class
class Shape {
  String? color; // String Field (can be null)

  Shape(this.color); // Constructor with Parameter "color"

  void display() => print("Color: $color"); // Method Expression Body
}

class Rectangle extends Shape {
  int? width; // Integer Field (can be null)
  int? height; // Integer Field (can be null)

  // Call color from Parent Class Shape with Super Keyword
  Rectangle(String? color, this.width, this.height) : super(color); // Constructor with Parameter "color", "width", and "height" // Call color from Parent Class Shape with Super Keyword

  int get area => width! * height!; // Getter Method Expression Body

  @override // Annotation
  void display() {
    super.display(); // Access Method display() from Parent Class Shape with Super Keyword
    print("Width: $width\nHeight: $height\nArea: $area"); // Print Field width, height, and Method area
  }
}

void main(){
  // Call Constructor
  var rectangle = Rectangle("Red", 10, 5); // Object with Fields "color", "width", and "height"
  rectangle.display(); // Calling Method display()
}