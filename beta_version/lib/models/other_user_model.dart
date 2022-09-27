import 'package:equatable/equatable.dart';

class OtherUserModel extends Equatable {
  final String uid; // The current user's id.
  final String username; // The current user's name (display name)
  final String photo; // Url for the current user's photo.
  final bool isBuddy;

  const OtherUserModel({
    required this.uid,
    required this.username,
    required this.photo,
    required this.isBuddy,
  });

  // Empty user which represents an unauthenticated user
  // static const empty = OtherUserModel(uid: '');

  // // Convenience getter to determine whether the current user is empty or not
  // bool get isEmpty => this == OtherUserModel.empty;
  // bool get isNotEmpty => this != OtherUserModel.empty;

  factory OtherUserModel.fromMap(map) {
    return OtherUserModel(
      uid: map['uid'],
      username: map['username'],
      photo: map['photo'],
      isBuddy: map['isBuddy'],
    );
  }
  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'isBuddy': isBuddy,
    };
  }

  @override
  List<Object?> get props => [uid, username, photo, isBuddy];
}
