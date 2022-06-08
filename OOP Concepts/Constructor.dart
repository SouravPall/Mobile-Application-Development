import 'package:untitled/untitled.dart' as class_object;

import 'class_object.dart';

void main(){
  Student s1 = Student(name: 'Sourav Paul', nid: 6235926592,mobile: '0168927755 ');
  Student s2 = Student(name: 'Black Adam', nid: 2482592572, mobile: '0176462478');
  Student s3 = Student(name: 'Dartanian', nid: 254964259,mobile: '0972947725');

  final studentList = [s1,s2,s3]; //collection

  studentList.forEach((student) {
    print(student.getInfo());
  });

}

class Student{
  String? name;
  int? nid;
  String? mobile;

  Student({ required this.name, required this.nid, this.mobile});  //constructor declaration //Named Required for {}

  getInfo() => 'Name: $name, NID: $nid, Mobile: $mobile';

}