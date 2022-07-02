import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String uid;
  final String? email;
  final String? firstName;
  final String? lastName;

  const User({required this.uid, this.email, this.firstName, this.lastName});

  static const empty = User(uid: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  factory User.fromMap(map) {
    return User(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }
  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  @override
  List<Object?> get props => [uid, email, firstName, lastName];
}
