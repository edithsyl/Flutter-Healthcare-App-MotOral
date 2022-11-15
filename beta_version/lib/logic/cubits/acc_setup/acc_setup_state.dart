part of 'acc_setup_cubit.dart';

// enum AccSetupStatus { initial, submitting, success, error }

/// [AccSetupState] consists of an [Email], [Password], and [FormzStatus]
/// [Email] and [Password] models extend [FormzInput] from the formz package
class AccSetupState extends Equatable {
  final FirstName firstName;
  final LastName lastName;
  final UserName userName;
  final Bio bio;

  final FormzStatus status;
  final String? errorMessage;

  // constructor
  const AccSetupState({
    this.firstName = const FirstName.pure(),
    this.lastName = const LastName.pure(),
    this.userName = const UserName.pure(),
    this.bio = const Bio.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  // another constructor for updating username or password without passing another value
  AccSetupState copyWith({
    FirstName? firstName,
    LastName? lastName,
    UserName? userName,
    Bio? bio,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return AccSetupState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      bio: bio ?? this.bio,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, userName, bio, status];
}
