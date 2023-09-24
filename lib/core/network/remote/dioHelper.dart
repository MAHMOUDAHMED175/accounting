import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static Init() {
    dio = Dio(BaseOptions(
      baseUrl: 'baseUrl',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'ar',
  }) async {
    //content-type: application/json; charset=utf-8
    //  date: Sun,24 Sep 2023 06:21:22 GMT
    //  server: Microsoft-IIS/10.0
    //  transfer-rencoding: chunked
    //  x-powered-by: ASP.NET
    dio.options.headers = {"Content-Type": "application/json"};
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  // static Future<Response> postData({
  //   required String url,
  //   Map<String,dynamic>? query,
  //   required Map<String,dynamic> data,
  //   String lang='en',
  //   String? token,
  // })async{
  //   dio.options.headers={
  //     "Content-Type":"application/json",
  //     "lang":lang,
  //   };
  //   return await dio.post(
  //     url,
  //     queryParameters: query,
  //     data: data
  //   );
  // }
  //
  //
  //
  //
  //
  // static Future<Response> putData(
  //     {
  //       required String url,
  //       Map<String,dynamic>? query,
  //       required Map<String,dynamic> data,
  //       String lang='en',
  //       String? token,
  //     })async{
  //   dio.options.headers= {
  //     'lang':lang,
  //     'Content-Type':'application/json',
  //
  //   };
  //   return await dio.put(
  //     url,
  //     queryParameters: query,
  //     data: data,
  //   );
  //
  //
  // }
  //
  //
  //
}
