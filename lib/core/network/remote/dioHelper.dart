import 'package:accounting/core/network/remote/api_endpoints.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static initial() {
    dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.domainLink,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'ar',
  }) async {
    dio.options.headers = {"Content-Type": "application/json"};
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  //{
  //   "parentId": 0,
  //   "englishName": "string",
  //   "arabicName": "string",
  //   "description": "string",
  //   "createdDate": "2023-09-28T17:04:53.933Z",
  //   "haveSub": true,
  //   "accountLevel": 0,
  //   "accountTypeId": 0,
  //   "accountCloseTypeId": 0,
  //   "accountGroupId": 0,
  //   "cashFlowTypeId": 0,
  //   "costExpensesTypeId": 0,
  //   "financialStatmentTypeId": 0,
  //   "generalExpenseTypeId": 0,
  //   "manufacturingCostTypeId": 0,
  //   "directCashFlowTypeId": 0,
  //   "costCategoryTypeId": 0,
  //   "haveAccountActivity": true,
  //   "accountActivityId": 0,
  //   "haveCostCenter": true,
  //   "costCenterId": 0,
  //   "haveAccountAnalysis": true,
  //   "accountAnalysisTypeId": 0,
  //   "isDeleted": true,
  //   "active": true
  // }
  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
    };
    return await dio.post(url, queryParameters: query, data: data);
  }

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
  // static Future<Response> deleteData({
  //   required String url,
  //   Map<String, dynamic>? query,
  //   String lang = 'ar',
  // }) async {
  //   // قم بإزالة رأس "Content-Type" من قائمة الهيدرز
  //   dio.options.headers.remove("Content-Type");
  //
  //   return await dio.delete(
  //     url,
  //     queryParameters: query,
  //   );
  // }
  //
  //
  //
}
