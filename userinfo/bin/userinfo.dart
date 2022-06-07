import 'package:test/test.dart';
import 'package:userinfo/userinfo.dart' as userinfo;

void main(){
registered_user1('souravpaul@gmail.com', 'pass123', 'Sourav','Paul');
registered_user2(email: 'sourav@gmail.com',password: '13145',firstName: 'Sourav',lastName: 'paul');
}
///Positional optional Arguments
registered_user1(String email, String password, [String firstName='', String lastName='',]) => print('Email: $email\nPassword: $password\nFirst name: $firstName\nLast name: $lastName');

///Named Optional Arguments
registered_user2(
    { required String email,
        required String password,
        String firstName = '',
        String lastName = '',}) => print('Email: $email\nPassword: $password\nFirst name: $firstName\nLast name: $lastName');