// part of 'acc_setup_cubit.dart';

// // enum AccSetupStatus { initial, submitting, success, error }

// /// [AccSetupState] consists of an [Email], [Password], and [FormzStatus]
// /// [Email] and [Password] models extend [FormzInput] from the formz package
// class AccSetupState extends Equatable {
//   final Email email;
//   final Password password;
//   final FormzStatus status;
//   final String? errorMessage;

//   // constructor
//   const AccSetupState({
//     this.email = const Email.pure(),
//     this.password = const Password.pure(),
//     this.status = FormzStatus.pure,
//     this.errorMessage,
//   });

//   // another constructor for updating username or password without passing another value
//   AccSetupState copyWith({
//     Email? email,
//     Password? password,
//     FormzStatus? status,
//     String? errorMessage,
//   }) {
//     return AccSetupState(
//       email: email ?? this.email,
//       password: password ?? this.password,
//       status: status ?? this.status,
//       errorMessage: errorMessage ?? this.errorMessage,
//     );
//   }

//   @override
//   List<Object?> get props => [email, password, status];
// }
