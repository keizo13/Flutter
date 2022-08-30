import 'package:dio/dio.dart';

void getHttp() async {
  try {
    var response = await Dio().get('http://localhost:3000/users');
    print(response);
  } catch (e) {
    print(e);
  }
}

//get request
Response response;
var dio = Dio();
response = await dio.get('http://localhost:3000/users');
print(response.data.toString());


//post request
response = await dio.post('/login', data: {'email': 12, 'password': 'wendu'});

//send form data
var formData = FormData.fromMap({
  'name': 'wendux',
  'age': 25,
});
var response = await dio.post('/info', data: formData);