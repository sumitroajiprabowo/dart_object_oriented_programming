/// Cascading Notation adalah sebuah cara untuk menulis kode yang lebih rapih
/// Di Dart, kita bisa membuat cascading notation dengan cara menambahkan tanda titik (.) setelah object.
/// Perhatikan contoh berikut:

// Example Class
class User {
  String? username; // String Field (can be null)
  String? password; // String Field (can be null)
  String? email; // String Field (can be null)
}

class Customer {
  String? username; // String Field (can be null)
  String? firstName; // String Field (can be null)
  String? lastName; // String Field (can be null)
}

Customer? createCustomer(){
  return null;
}

void main(){
  var user = User(); // Object with Fields "username", "password", and "email"
  user.username = "John"; // Without Cascading Notation
  user.password = "Doe"; // Without Cascading Notation
  user.email = "johndoemail@gmail.com"; // Without Cascading Notation

  var customer = Customer() // Object with Fields "username", "firstName", and "lastName"
    ..username = "John" // With Cascading Notation
    ..firstName = "John" // With Cascading Notation
    ..lastName = "Doe"; // With Cascading Notation

  // Example Nullable Cascading Notation
  Customer? customer2 = createCustomer()
    ?..username = "John" // With Nullable Cascading Notation
    ..firstName = "John" // With Nullable Cascading Notation
    ..lastName = "Doe"; // With Nullable Cascading Notation

  /*
  Perbedaan antara Cascading Notation dan tanpa Cascading Notation adalah:
  - Tanpa Cascading Notation, kita harus menuliskan nama objectnya terlebih dahulu sebelum menuliskan nama fieldnya.
  - Dengan Cascading Notation, kita bisa langsung menuliskan nama fieldnya tanpa harus menuliskan nama objectnya terlebih dahulu.
   */

  print(user.username); // Print Field username
  print(user.password); // Print Field password
  print(user.email); // Print Field email

  print("\n"); // New Line

  print(customer.username); // Print Field username
  print(customer.firstName); // Print Field firstName
  print(customer.lastName); // Print Field lastName

  print("\n"); // New Line

  print(customer2?.username); // Print Field username
  print(customer2?.firstName); // Print Field firstName
  print(customer2?.lastName); // Print Field lastName
}