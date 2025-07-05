

  import '../model/ResponseLogin.dart';
import '../model/ResponseRegister.dart';

abstract class AuthRepository {
  Future<ResponseLogin> login(String email, String password);
  Future<ResponseRegister> register(String name, String email, String password);

}