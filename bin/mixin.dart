/// Mixin Action di Dart
/// Mixin Action adalah sebuah cara untuk menambahkan method-method dari sebuah class ke dalam class lain tanpa harus melakukan inheritance.
/// Mixin Action biasanya digunakan ketika kita ingin menambahkan method-method dari sebuah class ke dalam class lain tanpa harus melakukan inheritance.
/// Di dalam Dart, kita dapat membuat Mixin Action dengan cara menambahkan kata kunci with diikuti dengan nama class yang ingin ditambahkan ke dalam class lain.
/// Perhatikan contoh berikut:


mixin Playable { // Mixin Action (add method play() to class that use this mixin)
  String? name; // String Field (can be null)

  void play() { // Method play()
    print('Play $name'); // Print "Play {name}"
  }
}

mixin Stoppable { // Mixin Action (add method stop() to class that use this mixin)
  String? name; // String Field (can be null)

  void stop() { // Method stop()
    print('Stoppable $name'); // Print "Stoppable {name}"
  }
}

class Musician with Playable, Stoppable {} // Mixin Action (add Playable and Stoppable to Musician Class)

class Dancer with Playable {} // Mixin Action (add Playable to Dancer Class)

abstract class Multimedia {} // Abstract Class Record

// Membatasi Mixin Action dengan Abstract Class
// Di dalam Dart, kita dapat membatasi Mixin Action dengan Abstract Class.
// Perhatikan contoh berikut:

mixin Record on Multimedia { // Mixin Action (add method record() to class that use this mixin)
  String? name; // String Field (can be null)

  void record() { // Method record()
    print('Record $name'); // Print "Record {name}"
  }
}

// class Piano with Record {} // Error because Piano Class not implement Multimedia Class (abstract class) and Piano Class not use Record Mixin

class Drum extends Multimedia with Record {} // Mixin Action (add Record to Musician2 Class)


void main() {
  var musician = Musician(); // Create Object
  musician.name = 'Guitar'; // Set name
  musician.play(); // Call play() from Playable Class
  musician.stop(); // Call stop() from Stoppable Class

  print("\n"); // New Line

  var dancer = Dancer(); // Create Object
  dancer.name = 'Dancer'; // Set name
  dancer.play(); // Call play() from Playable Class

  print("\n"); // New Line

  var drum = Drum(); // Create Object
  drum.name = 'Drum'; // Set name
  drum.record(); // Call record() from Record Class
}