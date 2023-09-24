/// Equal Operator di Dart
/// Equal Operator adalah sebuah operator yang digunakan untuk membandingkan apakah dua buah object sama atau tidak.
/// Biasanya, Equal Operator digunakan ketika kita ingin membandingkan apakah dua buah object sama atau tidak.
/// Di dalam Dart, kita dapat menggunakan operator == untuk membandingkan apakah dua buah object sama atau tidak.
/// Jangan heran jika operator == menghasilkan false walaupun dua buah object memiliki nilai yang sama.
/// Sebab operator == akan membandingkan apakah dua buah object memiliki alamat memori yang sama atau tidak.
/// Untuk membandingkan apakah dua buah object memiliki nilai yang sama, kita dapat menggunakan method bernama equals().
/// Atau menggunakan override operator ==.

// Example Class
class Category{
  int? id; // Integer Field (can be null)
  String? name; // String Field (can be null)

  printInfo(){ // Print Info Method
    print("Category {id: $id, name: $name}"); // Print "Category {id: $id, name: $name}"
  }

  Object? equals(Category category4) { // Equals Method
    if (category4.id == id && category4.name == name) {
      return true;
    } else {
      return false;
    }
  }

  // Enable it for using override operator ==
  // override operator ==
  // @override // Override operator == from Object Class (default class in Dart)
  // bool operator ==(Object other) { // Method operator == from Object Class (default class in Dart)
  //   if (other is Category) { // Check if other is Category
  //     if (other.id == id && other.name == name) { // Check if other.id == id and other.name == name
  //       return true; // Return true
  //     }
  //   }
  //   return false; // Return false
  // }
}

void main(){

    // Example Equal Operator
    var category1 = Category(); // Create Object
    category1.id = 1; // Set id
    category1.name = "Smartphone"; // Set name

    var category2 = Category(); // Create Object
    category2.id = 1; // Set id
    category2.name = "Smartphone"; // Set name

    /*
    Print false (because category1 and category2 have different memory address)
    If we want to compare two objects based on their values, we can use the equals() method.
    Or we can override the == operator.
     */
    print(category1 == category2);

    print("\n"); // New Line

    // Example Equals Method
    var category3 = Category(); // Create Object
    category3.id = 1; // Set id
    category3.name = "Smartphone"; // Set name

    var category4 = Category(); // Create Object
    category4.id = 1; // Set id
    category4.name = "Smartphone"; // Set name

    /*
    Print true (because category3 and category4 have same value)
    Because using the equals() method, we can compare two objects based on their values.
     */
    print(category3.equals(category4));
}