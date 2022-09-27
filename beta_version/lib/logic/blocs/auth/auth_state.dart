part of 'auth_bloc.dart';

/// [AuthState] consists of an [AuthStatus] and a [User]
/// Two named constructors are exposed: [unauthenticated] and [authenticated] to make it easier to work with

enum AuthStatus { authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final UserModel user;

  const AuthState._({
    required this.status,
    this.user = UserModel.empty,
  });

  const AuthState.authenticated(UserModel user)
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
