import 'package:untitled/untitled.dart' as class_object;

import 'class_object.dart';

void main(){
  Student s1 = Student(name: 'Sourav Paul', nid: 6235926592,mobile: '0168927755');
  Student s2 = Student(name: 'Black Adam', nid: 2482592572, mobile: '0176462478');
  Student s3 = Student(name: 'Dartanian', nid: 254964259,mobile: '0972947725');

  s1.department = Department(departmentName: 'CSE', id: '17102030', batch: 'CSE-42');
  s2.department = Department(departmentName: 'ICT', id: '13102044', batch: 'ICT-20');
  s3.department = Department(departmentName: 'EEE', id: '16102021', batch: 'EEE-27');

  s1.courseList = [
    Course(courseName: 'Android', courseCredit: 3.0, courseCode: 'A101'),
    Course(courseName: 'Python', courseCredit: 3.0, courseCode: 'P102'),
    Course(courseName: 'React', courseCredit: 3.0, courseCode: 'R103'),
  ];
  s2.courseList = [
    Course(courseName: 'Machine Leaning', courseCredit: 4.0, courseCode: 'ML222'),
    Course(courseName: 'Algorithm', courseCredit: 3.0, courseCode: 'Alg202'),
  ];
  s3.courseList = [
    Course(courseName: 'English', courseCredit: 1.5, courseCode: 'E101'),
    Course(courseName: 'UI/UX', courseCredit: 2.0, courseCode: 'U111'),
    Course(courseName: 'SQA', courseCredit: 2.0, courseCode: 'S105'),
    Course(courseName: 'Dot Net', courseCredit: 3.0, courseCode: 'DN201'),
  ];



  final studentList = [s1,s2,s3]; //collection
  for(var student in studentList){
    int serial = 1;
    //print('${student.name} - ${student.department?.departmentName} - ${student.courseList?.length}'); //name - department Name - total courses
    print(student.name);
    print('___________________');
    for(var course in student.courseList!){
      print('$serial. ${course.courseName} - ${course.courseCredit}');
      serial++;
    }
    print('\n');
  }
  // studentList.forEach((student) {
  //   print(student.getInfo());
  // });
}

class Student{
  String? name;
  int? nid;
  String? mobile;
  Department? department; //a student has a department
  List<Course>? courseList; //a student has many courses

  //constructor declaration //Named Required for {}
  Student({ required this.name, required this.nid, this.courseList, this.department, this.mobile}) : assert(nid! > 0); //after colon (:) those initializer list, //assert means Condition check

  getInfo() => 'Name: $name, NID: $nid, Mobile: $mobile';

}

class Department{
  String departmentName;
  String id;
  String batch;
  List<Student>? student; // a department has many students //association(OOP)

  Department({required this.departmentName, required this.id, required this.batch}); //Named Optional
}

class Course{
  String courseName;
  double courseCredit;
  String courseCode;

  Course({required this.courseName,required this.courseCredit,required this.courseCode}) : assert(courseCredit > 0.0);
}