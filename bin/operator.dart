/// Operator class di Dart
/// Operator adalah simbol yang digunakan untuk melakukan operasi tertentu.
/// Di Dart, operator dibagi menjadi beberapa kategori, yaitu:
/// 1. Arithmetic Operator
/// 2. Relational Operator
/// 3. Type Test Operator
/// 4. Bitwise Operator
/// 5. Assignment Operator
/// 6. Logical Operator
/// 7. Conditional Operator
/// 8. Cascade Notation Operator
/// 9. Operator Overloading

// Example Class (Arithmetic Operator) without Operator Overloading
class Orange {
  int price = 0;

  // Operator Overloading
  Orange operator +(Orange orange){
    var result = Orange();
    result.price = price + orange.price;
    return result;
  }
}

// Example Class (Arithmetic Operator) with Operator Overloading and Constructor
class Mango {
  int price;

  Mango(this.price);

  // Operator Overloading
  Mango operator +(Mango mango) => Mango(price + mango.price);

  Mango operator -(Mango mango) => Mango(price - mango.price);

  Mango operator *(Mango mango) => Mango(price * mango.price);

  Mango operator /(Mango mango) => Mango(price ~/ mango.price);

  Mango operator %(Mango mango) => Mango(price % mango.price);
}

// Example Class (Operator Overloading) with Constructor and Operator Overloading
class Apple {
  int price;

  Apple(this.price);

  // Operator Overloading
  Apple operator +(Apple apple) => Apple(price + apple.price);
}


void main(){

  // Call orange class operator overloading without constructor
  var orange1 = Orange();
  orange1.price = 10000;

  var orange2 = Orange();
  orange2.price = 20000;

  // Call operator overloading
  var orange3 = orange1 + orange2;
  print(orange3.price);

  // Call mango class operator overloading with constructor
  var mango1 = Mango(10000);
  var mango2 = Mango(20000);

  // Call operator overloading
  var mango3 = mango1 + mango2;
  print(mango3.price);

  // Call operator overloading
  var mango4 = mango1 - mango2;
  print(mango4.price);

  // Call operator overloading
  var mango5 = mango1 * mango2;
  print(mango5.price);

  // Call apple class operator overloading with constructor
  var apple1 = Apple(10000);
  var apple2 = Apple(20000);

  // Call operator overloading
  var apple3 = apple1 + apple2;
  print(apple3.price);
}