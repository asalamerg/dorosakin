import 'package:dorosakin/feature/auth/data/model/ResponseLogin.dart';

import '../model/ResponseRegister.dart';

abstract class DataSourceApi{


  Future<ResponseLogin> dataSourceLogin(String email, String password);
  Future<ResponseRegister> dataSourceRegister(String name, String email, String password);



}