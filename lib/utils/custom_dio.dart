import 'package:dio/dio.dart';

Future<bool> getHttp(email, password) async {
  try {
    var response = await Dio().post(
      'http://192.168.42.46:3000/login',
      data: {
        "email": email,
        "password": password,
      },
    );
    print(response);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}

//Future<bool> changePassword(password, newPassword, confirmNewPassword) async {
//  try {
//    var response = await Dio().put(
//      'http://192.168.42.46:3000/login',
//      data: {
//        "password": password,
//        "newPassword": newPassword,
//        "confirmnewPassword": confirmNewPassword,
//     },
//    );
//    if (newPassword != confirmNewPassword) {
//      print(response);
//      return true;
//    }
//  } catch (e) {
//    print(e);
//    return false;
//  }
//}

//void main() async {
  //var dio = Dio();
  //final response = await dio.get('http://localhost:3000/users');
  //print(response.data);
//}
