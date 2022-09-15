// import 'package:beta_version/logic/blocs/export_blocs.dart';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:formz/formz.dart';
// import 'package:beta_version/models/input_model.dart';
// part 'acc_setup_state.dart';

// /// [AccSetupCubit] manages the [AccSetupState] of the form
// /// It exposes APIs [AccSetupWithCredentials] and [AccSetupWithGoogle]
// /// It gets notified when the email/password are updated
// /// It has a dependency on the [AuthRepository]
// class AccSetupCubit extends Cubit<AccSetupState> {
//   final AuthRepository _authRepository;

//   AccSetupCubit(this._authRepository) : super(const AccSetupState());

//   void emailChanged(String value) {
//     final email = Email.dirty(value);
//     emit(state.copyWith(
//       email: email,
//       status: Formz.validate([email, state.password]),
//     ));
//   }

//   void passwordChanged(String value) {
//     final pword = Password.dirty(value);
//     emit(state.copyWith(
//       password: pword,
//       status: Formz.validate([state.email, pword]),
//     ));
//   }
// }
