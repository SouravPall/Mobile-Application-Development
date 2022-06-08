import 'package:untitled/untitled.dart' as class_object;

void main(){
  Student s1 = Student(name: 'Sourav Paul', nid: 6235926592,mobile: '0168927755 ');
  Student s2 = Student(name: 'Black Adam', nid: 2482592572, mobile: '0176462478');

  print(s1.getInfo());
  print(s2.getInfo());

}

class Student{
  String name;
  int nid;
  String? mobile;

  Student({ required this.name, required this.nid, this.mobile});  //constructor declaration //Named Required for {}

  getInfo() => 'Name: $name, NID: $nid, Mobile: $mobile';

}