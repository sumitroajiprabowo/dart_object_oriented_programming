/// Hascode Getter di Dart
/// Hascode Getter adalah sebuah method yang digunakan untuk mengambil nilai hashcode dari sebuah object.
/// Biasanya, Hascode Getter digunakan ketika kita ingin mengambil nilai hashcode dari sebuah object.
/// Di dalam Dart, kita dapat membuat Hascode Getter dengan cara menambahkan method bernama get hashCode() ke dalam sebuah class.
/// Perhatikan contoh berikut:

// Example Class
class Person{
  String? name; // String Field (can be null)
  int? age; // Integer Field (can be null)

  // Constructor
  Person(this.name, this.age);

  /*
  This code from generate code in Android Studio
  From menu Code -> Generate -> Equals and Hashcode
  */
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode; // Hascode Getter

  // End of code from generate code in Android Studio

// override equals() from Object Class (default class in Dart)
  // @override // Override equals() from Object Class (default class in Dart)
  // bool operator ==(Object other) { // Method equals() from Object Class (default class in Dart)
  //   if (other is Person) { // Check if other is Person
  //     if (other.name == name && other.age == age) { // Check if other.name == name and other.age == age
  //       return true; // Return true
  //     }
  //   }
  //   return false; // Return false
  // }

  // Hascode Getter
  // @override
  // int get hashCode => name.hashCode ^ age.hashCode;


}

void main(){

    var person = Person("John", 18); // Create Object
    var person2 = Person("John", 18); // Create Object

    /*
    Print false if without override equals() and hashCode()
    (because person and person2 are different object even though they have the same value)
    Print true if with override equals() and hashCode()
     */
    print(person == person2); // Compare using equality operator (==)

    // Compare using hashcode
    print(person.hashCode); // Hascode of person
    print(person2.hashCode); // Hascode of person2

    /*
    Print false
    (sebab person dan person2 memiliki alamat memori yang berbeda walaupun memiliki nilai yang sama)
    Oleh karena itu kita perlu melakukan override equals() dan hashCode() dari Object Class (default class di Dart).
     */
    print(person.hashCode == person2.hashCode);
}