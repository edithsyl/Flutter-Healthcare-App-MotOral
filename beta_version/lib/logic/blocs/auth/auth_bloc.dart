import 'dart:async';

import 'package:beta_version/models/user_model.dart';
import 'package:beta_version/repositories/auth/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// [AuthBloc] is responsible for managing the global state of the application
/// It responds to incoming [AuthEvent] and transforms them into outgoing [AuthState]
/// It has a dependency on the [AuthRepository] and subscribes to the [User] Stream in order to emit new states in response to changes in the current user
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  late final StreamSubscription<User> _userSubscription;

  // constructor
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

    /// subscribes to the user stream from the authrepository & adds an [AuthUserChanged] event internally to process changes in the current user
    _userSubscription = _authRepository.user.listen(
      (user) => add(AuthUserChanged(user)),
    );
  }

  void _onUserChanged(
    AuthUserChanged event,
    Emitter<AuthState> emit,
  ) {
    emit(
      event.user.isNotEmpty
          ? AuthState.authenticated(event.user)
          : const AuthState.unauthenticated(),
    );
  }

  void _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) {
    unawaited(_authRepository.logOut());
  }

  /// [close] is overridden in order to handle cancelling the internal [StreamSubscription]
  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
