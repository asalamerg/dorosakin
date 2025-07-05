
import 'package:dio/dio.dart';
import 'package:dorosakin/feature/auth/data/model/ResponseLogin.dart';
import 'package:dorosakin/feature/auth/data/model/ResponseRegister.dart';
import '../data_sources/data_sourcea_api.dart';
import '../data_sources/data_sources_api_impl.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Dio _dio = Dio();
  late final DataSourcesApiImpl dataSource = DataSourcesApiImpl(_dio);

  @override
  Future<ResponseLogin> login(String email, String password) async {
    try {
      return await dataSource.dataSourceLogin(email, password);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResponseRegister> register(String name, String email, String password) async {
    try {
      return await dataSource.dataSourceRegister(name, email, password);
    } catch (e) {
      rethrow;
    }
  }
}