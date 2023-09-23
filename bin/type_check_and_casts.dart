/// Type Check and Casts di Dart
/// Type Check and Casts adalah sebuah cara untuk mengecek tipe data dari sebuah object dan mengubah tipe data dari sebuah object.
/// Biasanya, Type Check and Casts digunakan ketika kita ingin mengubah tipe data dari sebuah object menjadi tipe data yang lebih spesifik.
/// Perhatikan contoh berikut:

// Example Class
class Employee {
  String? name; // String Field (can be null)
  String? position; // String Field (can be null)

  Employee(this.name, this.position); // Constructor
}

class Manager extends Employee {
  String? department; // String Field (can be null)

  Manager(String? name, String? position, this.department) : super(name, position); // Constructor
}

class VicePresident extends Employee {
  String? department; // String Field (can be null)

  VicePresident(String? name, String? position, this.department) : super(name, position); // Constructor
}

void sayHello(Employee employee){
  if(employee is Manager){ // Check if employee is Manager
    print("Hello Manager ${employee.name}"); // if true Print "Hello Manager {employee.name}"
  } else if(employee is VicePresident){ // Check if employee is VicePresident
    print("Hello Vice President ${employee.name}"); // if true Print "Hello Vice President {employee.name}"
  } else { // if false
    print("Hello ${employee.name}"); // Print "Hello {employee.name}"
  }
}

void main(){

  // Example Type Check
  var employee = Manager("John", "Manager", "Sales"); // Object with Fields "name", "position", and "department"
  if(employee is Manager){ // Check if employee is Manager
    print("Employee is Manager"); // Print "Employee is Manager"
  } else {
    print("Employee is not Manager"); // Print "Employee is not Manager"
  }

  print("\n"); // New Line

  // Example Type Casts (Implicit)
  var employee2 = Manager("John", "Manager", "Sales"); // Object with Fields "name", "position", and "department"
  if(employee2 is Manager){ // Check if employee2 is Manager
    print("Employee is Manager"); // Print "Employee is Manager"

    /*
    employees2 as Manager adalah sebuah cara untuk mengubah tipe data dari
    sebuah object menjadi tipe data yang lebih spesifik.
    Perhatikan contoh berikut:

    print((employee2 as Manager).department); // Print Field department

    Namun, cara di atas tidak disarankan karena akan menghasilkan error jika
    objectnya bukan tipe data yang kita inginkan.
    Oleh karena itu, kita bisa menggunakan cara berikut:
     */

    print(employee2.department); // Print Field department
  } else {
    print("Employee is not Manager"); // Print "Employee is not Manager"
  }

  print("\n"); // New Line

  // Example Type Check and Casts in Function
  var employee3 = VicePresident("John", "Manager", "Sales"); // Object with Fields "name", "position", and "department"
  sayHello(employee3); // Call sayHello() Function

}