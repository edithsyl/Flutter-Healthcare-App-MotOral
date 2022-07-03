part of 'login_cubit.dart';

// enum LoginStatus { initial, submitting, success, error }

/// [LoginState] consists of an [Email], [Password], and [FormzStatus]
/// [Email] and [Password] models extend [FormzInput] from the formz package
class LoginState extends Equatable {
  final Email email;
  final Password password;
  final FormzStatus status;
  final String? errorMessage;

  // constructor
  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  // another constructor for updating username or password without passing another value
  LoginState copyWith({
    Email? email,
    Password? password,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [email, password, status];
}
