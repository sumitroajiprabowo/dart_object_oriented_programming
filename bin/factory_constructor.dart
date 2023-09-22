/// Factory constructor di Dart
/// Factory constructor adalah constructor yang digunakan untuk membuat object yang immutable.
/// Di Dart, kita bisa membuat factory constructor dengan cara menambahkan keyword factory sebelum nama constructor.
/// Perhatikan contoh berikut:


// Example Factory Class
class Database {
  Database(){ // Normal Constructor
    print("Create New Connection Database");
  }

  static Database database = Database(); // Static Field

  // Static Method with return value
  static Database getDatabase(){
    return database;
  }

  factory Database.get(){ // Factory Constructor
    return database;
  }

  factory Database.empty(){ // Factory Constructor
    return Database();
  }

  Database.open(){ // Factory Constructor
    print("Open Database");
  }

  // Factory Constructor with return value
  factory Database.read(String data){
    return Database();
  }

}

void main(){
  // Call Factory Constructor
  var database1 = Database(); // Calling Factory Constructor with Normal Constructor
  var database2 = Database.get(); // Calling Factory Constructor with Redirect Constructor
  var databaseGet = Database.getDatabase(); // Calling Factory Constructor with Static Method
  print(database1); // Instance of 'Database' (same as databaseGet)
  print(database2); // Instance of 'Database' (same as databaseGet)
  print(databaseGet); // Instance of 'Database' (same as database1 and database2)
  print(database1 == database2); // true (same as databaseGet)

  print ("\n"); // New Line

  var databaseEmpty = Database.empty(); // Calling Factory Constructor with Factory Constructor
  print(databaseEmpty); // Instance of 'Database' (same as database and databaseGet) because of Factory Constructor

  var databaseOpen = Database.open(); // Calling Factory Constructor
  print(databaseOpen); // Instance of 'Database'

  var databaseRead = Database.read("Hello"); // Calling Factory Constructor with return value
  print(databaseRead); // Instance of 'Database' (same as database, databaseGet, databaseEmpty, and databaseOpen) because of Factory Constructor
}