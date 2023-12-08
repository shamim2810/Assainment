//Role interface
abstract class Role{
  void displayRole();
}

//define person class implements Role
class Person implements Role{
  late String name ;
  late int age ;
  late String address ;

  //Constructor
Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }

// getter method
String get getName{
  return name;
}

int get getAge{
  return age;
}

String get getAddress{
  return address;
}

}

//Student class extends Person class
class Student extends Person {
  int studentID;
  List<int>courseScores;

  Student(String name, int age, String address, this.studentID,
      this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role : Student");
    print("Name : $name");
    print("Age : $age");
    print("Address : $address");
    print("Average Score : ${AverageScore().toStringAsFixed(2)}");
  }

  double AverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

}

//teacher class extends person class
class Teacher extends Person{
  String teacherId;
  List<String> coursesTaught;

  Teacher(String name, int age,String address, this.teacherId, this.coursesTaught) : super(name, age, address);

  @override
  void displayRole() {
    print("Role : Teacher");
    print("Name : $name");
    print("Age : $age");
    print("Address : $address");
    print("Courses Taught:");

    for(var course in coursesTaught){
      print("- $course");
    }
  }
}
void main(){
  //create instance student and teacher class
 var student = Student("Shamim Hasan", 22, "Dhaka", 149120, [90,99,95,85]);
 var teacher = Teacher("Soma Rani", 38, "Dhaka", "T2546", ["Dart","Flutter","Java","Python"]);

 student.displayRole();
 print("\n");
 teacher.displayRole();

}