import 'package:dio/dio.dart';
import 'package:dorosakin/feature/auth/data/model/ResponseLogin.dart';
import 'package:dorosakin/feature/auth/data/model/ResponseRegister.dart';
import 'package:dorosakin/shared/error/dio_exception_handler.dart';


import '../../../../shared/constant_api/constant_api.dart';
import 'data_sourcea_api.dart';




class DataSourcesApiImpl extends DataSourceApi {
  final Dio _dio;

  DataSourcesApiImpl(this._dio);

  @override
  Future<ResponseLogin> dataSourceLogin(String email, String password) async {
    try {
      final response = await _dio.post(
        '${ConstantApi.baseUrl}${ConstantApi.endpointsLogin}',
        data: {
          'email': email,
          'password': password,
        },
      );
      return ResponseLogin.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(DioExceptionHandler.handle(e));
    } catch (e) {
      throw Exception('حدث خطأ غير متوقع أثناء تسجيل الدخول');
    }
  }

  @override
  Future<ResponseRegister> dataSourceRegister(String name, String email, String password) async {
    try {
      final response = await _dio.post(
        '${ConstantApi.baseUrl}${ConstantApi.endpointsRegister}',
        data: {
          'name': name,
          'email': email,
          'password': password,
        },
      );
      return ResponseRegister.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(DioExceptionHandler.handle(e));
    } catch (e) {
      throw Exception('حدث خطأ غير متوقع أثناء التسجيل');
    }
  }
}
