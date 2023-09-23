class Person {
  String name;
  int age;
  Person(this.name, this.age);

  @override
  String toString() => 'Name: $name Age: $age';
}

class Student extends Person {
  String studentId;
  Student(this.studentId, String name, int age) : super(name, age);

  @override
  String toString() => 'Student ID: $studentId Name: $name Age: $age';
}