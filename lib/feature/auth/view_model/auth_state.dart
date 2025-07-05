abstract class AuthState {}

class AuthInitial extends AuthState{}
// ----------- Login States -----------
class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final String message;
  LoginSuccess(this.message);
}

class LoginFailure extends AuthState {
  final String error;
  LoginFailure(this.error);
}

// ----------- Register States -----------
class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {
  final String message;
  RegisterSuccess(this.message);
}

class RegisterFailure extends AuthState {
  final String error;
  RegisterFailure(this.error);
}

// ----------- Logout States -----------
class LogoutLoading extends AuthState {}

class LogoutSuccess extends AuthState {
  final String message;
  LogoutSuccess(this.message);
}

class LogoutFailure extends AuthState {
  final String error;
  LogoutFailure(this.error);
}
