import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/repository/auth_repository_impl.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepositoryImpl authRepository = AuthRepositoryImpl();
  String token = "your_saved_token_here";

  AuthCubit() : super(AuthInitial());

  void login(String email, String password) async {
    emit(LoginLoading());
    try {
      final response = await authRepository.login(email, password);
      if (response.success == true) {
        emit(LoginSuccess(response.message ?? "تم تسجيل الدخول بنجاح"));
      } else {
        emit(LoginFailure(response.message ?? "فشل تسجيل الدخول"));
      }
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }

  void register(String name, String email, String password) async {
    emit(RegisterLoading());
    try {
      final response = await authRepository.register(name, email, password);
      if (response.success == true) {
        emit(RegisterSuccess(response.message ?? "تم إنشاء الحساب بنجاح"));
      } else {
        emit(RegisterFailure(response.message ?? "فشل إنشاء الحساب"));
      }
    } catch (e) {
      emit(RegisterFailure(e.toString()));
    }
  }
  Future<void> logout() async {
    emit(LogoutLoading());
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      if (token == null || token.isEmpty) {
        emit(LogoutFailure("لم يتم العثور على التوكن"));
        return;
      }

      final response = await authRepository.logout(token);

      if (response.success == true) {
        await prefs.remove('token');
        emit(LogoutSuccess(response.message ?? "تم تسجيل الخروج"));
      } else {
        emit(LogoutFailure(response.message ?? "فشل تسجيل الخروج"));
      }
    } catch (e) {
      emit(LogoutFailure(e.toString()));
    }
  }
}
