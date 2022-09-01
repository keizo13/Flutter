import 'package:dio/dio.dart';
import 'package:inicio/models/user_data.dart';

Future<String> getHttp(email, password) async {
  try {
    var response = await Dio().post(
      'http://192.168.0.13:3000/login',
      data: {
        "email": email,
        "password": password,
      },
    );
    var sucesso = "sucesso";
    UserData user = UserData.fromJson(response.data['user']);
    return sucesso;
  } on DioError catch (e) {
    var error = e.response?.data['error'];
    return error;
  }
}

Future<String> getPassword(password, newPassword, repeatPassword) async {
  String p1 = newPassword;
  String p2 = repeatPassword;
  try {
    if (p1 == p2) {
      var response = await Dio().put(
        'http://192.168.0.13:3000/users/?id',
        data: {
          "password": password,
          "newPassword": newPassword,
        },
      );
    }
    var sucesso = "sucesso";
    return sucesso;
  } on DioError catch (e) {
    var error = e.response?.data['error'];
    return error;
  }
}
