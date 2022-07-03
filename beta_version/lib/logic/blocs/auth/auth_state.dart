part of 'auth_bloc.dart';

/// [AuthState] consists of an [AuthStatus] and a [User]
/// Two named constructors are exposed: [unauthenticated] and [authenticated] to make it easier to work with

enum AuthStatus {
  authenticated,
  unauthenticated,
}

class AuthState extends Equatable {
  final AuthStatus status;
  final User user;

  const AuthState._({
    required this.status,
    this.user = User.empty,
  });

  const AuthState.authenticated(User user)
      : this._(
          status: AuthStatus.authenticated,
          user: user,
        );

  const AuthState.unauthenticated()
      : this._(
          status: AuthStatus.unauthenticated,
        );

  @override
  List<Object?> get props => [status, user];
}
