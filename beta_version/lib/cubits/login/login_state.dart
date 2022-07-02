part of 'login_cubit.dart';

enum LoginStatus { initial, submitting, success, error }

class LoginState extends Equatable {
  final String email;
  final String password;
  final LoginStatus status;

  const LoginState({
    required this.email,
    required this.password,
    required this.status,
  });

  // constructor
  factory LoginState.initial() {
    return const LoginState(
      email: '',
      password: '',
      status: LoginStatus.initial,
    );
  }

  // another constructor for updating username or password without passing another value
  LoginState copyWith({
    String? email,
    String? password,
    LoginStatus? status,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [email, password, status];
}
