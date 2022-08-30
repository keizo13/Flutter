import 'package:dio/dio.dart';

Future<String> getHttp(email, password) async {
  try {
    var response = await Dio().post(
      'http://192.168.42.46:3000/login',
      data: {
        "email": email,
        "password": password,
      },
    );
    var sucesso = "sucesso";
    return sucesso;
  } on DioError catch (e) {
    var error = e.response?.data['error'];
    return error;
  }
}



//void main() async {
  //var dio = Dio();
  //final response = await dio.get('http://localhost:3000/users');
  //print(response.data);
//}
