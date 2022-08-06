import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String uid; // The current user's id.
  final String? email; // The current user's email address.
  final String? firstName;
  final String? lastName;
  final String? username; // The current user's name (display name)
  final String? photo; // Url for the current user's photo.

  const UserModel({
    required this.uid,
    this.email,
    this.firstName,
    this.lastName,
    this.username,
    this.photo,
  });

  // Empty user which represents an unauthenticated user
  static const empty = UserModel(uid: '');

  // Convenience getter to determine whether the current user is empty or not
  bool get isEmpty => this == UserModel.empty;
  bool get isNotEmpty => this != UserModel.empty;

  factory UserModel.fromMap(map) {
    return UserModel(
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
  List<Object?> get props => [uid, email, firstName, lastName, username, photo];
}
