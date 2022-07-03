part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

// two events:
// (1) when user wants to logout
class AuthLogoutRequested extends AuthEvent {}

// (2) change in user in terms of authentication
class AuthUserChanged extends AuthEvent {
  final User user;

  const AuthUserChanged(this.user);

  @override
  List<Object?> get props => [user];
}
