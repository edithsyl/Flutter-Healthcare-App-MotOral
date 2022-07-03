import 'dart:async';

import 'package:beta_version/models/user_model.dart';
import 'package:beta_version/repositories/auth/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User>? _userSubscription;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(
          authRepository.currentUser.isNotEmpty
              ? AuthState.authenticated(authRepository.currentUser)
              : const AuthState.unauthenticated(),
        ) {
    // initial state is unauthenticated
    // methods that are invoked under different events are as follows
    on<AuthUserChanged>(_onUserChanged);
    on<AuthLogoutRequested>(_onLogoutRequested);

    _userSubscription =
        _authRepository.user.listen((user) => add(AuthUserChanged(user)));
  }

  void _onUserChanged(
    AuthUserChanged event,
    Emitter<AuthState> emit,
  ) {}

  void _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) {}

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
