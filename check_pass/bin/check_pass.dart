import 'dart:io';

import 'package:check_pass/check_pass.dart' as check_pass;


void main(List<String> arguments) {
  print('Enter Your Password: ');
  String? password = stdin.readLineSync();
  
  void validatePassword(String password) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isEmpty) {
      print('Please enter password') ;
    } else {
      if (!regex.hasMatch(password)) {
        print('Invalid!, Enter valid password...');
      } else {
        print('Valid');
      }
    }
  }
  validatePassword(password.toString());
}
