import 'package:formz/formz.dart';

/// Validation errors for the [Email] [FormzInput]
/// Generic invalid error.
enum EmailValidationError { invalid }

/// Validation errors for the [Password] [FormzInput]
/// Generic invalid error.
enum PasswordValidationError { invalid }

/// Validation errors for the [ConfirmedPassword] [FormzInput].
enum ConfirmedPasswordValidationError { invalid }

enum FirstNameError { empty }

enum LastNameError { empty }

enum UserNameError { empty }

enum BioError { empty }

///////////////////////////////////////////////////////////////////

class FirstName extends FormzInput<String, FirstNameError> {
  const FirstName.pure({String value = ''}) : super.pure(value);
  const FirstName.dirty({String value = ''}) : super.dirty(value);

  @override
  FirstNameError? validator(String value) {
    return value.isEmpty ? FirstNameError.empty : null;
  }
}

class LastName extends FormzInput<String, LastNameError> {
  const LastName.pure({String value = ''}) : super.pure(value);
  const LastName.dirty({String value = ''}) : super.dirty(value);

  @override
  LastNameError? validator(String value) {
    return value.isEmpty ? LastNameError.empty : null;
  }
}

class UserName extends FormzInput<String, UserNameError> {
  const UserName.pure({String value = ''}) : super.pure(value);
  const UserName.dirty({String value = ''}) : super.dirty(value);

  @override
  UserNameError? validator(String value) {
    return value.isEmpty ? UserNameError.empty : null;
  }
}

class Bio extends FormzInput<String, BioError> {
  const Bio.pure({String value = 'this mysterious user has no bio...'})
      : super.pure(value);
  const Bio.dirty({String value = ''}) : super.dirty(value);

  @override
  BioError? validator(String value) {
    return null; // isn't a must for user to input bio
    // return value.isEmpty ? BioInputError.empty : null;
  }
}

///////////////////////////////////////////////////////////////////

/// Form input for an email input.
class Email extends FormzInput<String, EmailValidationError> {
  // Call super.pure to represent an unmodified form input.
  const Email.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}

/// Form input for an password input.
class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}

/// Form input for a confirmed password input.
class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  /// The original password.

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}
