import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repository/auth_repository_impl.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  final AuthRepositoryImpl authRepository = AuthRepositoryImpl();

  AuthCubit() : super(AuthInitial());

  void login(String email, String password) async {
    emit(AuthLoading());
    try {
      final response = await authRepository.login(email, password);
      if (response.success == true) {
        emit(AuthSuccessLogin(response.message ?? "تم تسجيل الدخول بنجاح"));
      } else {
        emit(AuthFailure(response.message ?? "فشل تسجيل الدخول"));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  void register(String name, String email, String password) async {
    emit(AuthLoading());
    try {
      final response = await authRepository.register(name, email, password);
      if (response.success == true) {
        emit(AuthSuccessRegister(response.message ?? "تم إنشاء الحساب بنجاح"));
      } else {
        emit(AuthFailure(response.message ?? "فشل إنشاء الحساب"));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
