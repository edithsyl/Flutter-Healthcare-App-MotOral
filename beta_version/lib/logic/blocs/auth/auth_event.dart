part of 'auth_bloc.dart';

/// [AuthEvent] has two subclasses:
/// 1) [AuthLogoutRequested] which notifies the bloc that the current user has requested to be logged out.
/// 2) [AuthUserChanged] which notifies the bloc that the current user has changed.
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthLogoutRequested extends AuthEvent {}

class AuthUserChanged extends AuthEvent {
  final User user;

  const AuthUserChanged(this.user);

  @override
  List<Object?> get props => [user];
}
