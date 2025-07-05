abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccessLogin extends AuthState {
  final String message;
  AuthSuccessLogin(this.message);
}

class AuthSuccessRegister extends AuthState {
  final String message;
  AuthSuccessRegister(this.message);
}

class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}
