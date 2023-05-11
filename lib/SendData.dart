import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get('http://127.0.0.1:8000/api/student/result?id_student=420');
  print(response);
}