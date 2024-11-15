class Person {
  String name;
  String address;

  Person(this.name, this.address);
  @override
  String toString() {
    return 'Person{name: $name, address: $address}';
  }
}

class Student extends Person {
  int numCourses;
  List<String> courses;
  List<int> grades;

  Student(String name, String address)
      : numCourses = 0,
        courses = [],
        grades = [],
        super(name, address);

  void addCourse(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  double getAverageGrades() {
    if (numCourses == 0) {
      return 0.0;
    }
    return grades.reduce((sum, grade) => sum + grade) / numCourses;
  }

  void addCourseGrade(String course, int grade) {
    int index = courses.indexOf(course);
    if (index != -1) {
      grades[index] = grade;
    }
  }

  void printGrades() {
    for (int i = 0; i < numCourses; i++) {
      print('${courses[i]}: ${grades[i]}');
    }
  }

  @override
  String toString() {
    return 'Student{name: $name, address: $address, numCourses: $numCourses, courses: $courses, grades: $grades}';
  }
}

class Teacher extends Person {
  int numCourses;
  List<String> courses;

  Teacher(String name, String address)
      : numCourses = 0,
        courses = [],
        super(name, address);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    numCourses--;
    return true;
  }

  @override
  String toString() {
    return 'Teacher{name: $name, address: $address, numCourses: $numCourses, courses: $courses}';
  }
}

void main() {
  Teacher teacher = Teacher("John", "123 Main Street");
  print(teacher);
  teacher.addCourse("Math");
  teacher.addCourse("Science");
  print(teacher);
  teacher.removeCourse("Math");
  print(teacher);

  Student student = Student("Jane", "456 Oak Street");
  print(student);
  student.addCourse("Math", 90);
  student.addCourse("Science", 85);
  print(student);
  student.addCourseGrade("Math", 95);
  print(student);
}
