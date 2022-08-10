import 'package:equatable/equatable.dart';

class TherapistModel extends Equatable {
  final String tid; // Therapist's id.
  final String name; // Therapist's name
  final String title; // Therapist's title
  final String photoURL; // Url for therapist's photo avatar
  final String email;
  final String phoneNo;
  final String workplace;
  final List<String> qualifications;
  final String areaofInterest;

  const TherapistModel({
    required this.tid,
    required this.name,
    required this.title,
    required this.photoURL,
    required this.email,
    required this.phoneNo,
    required this.workplace,
    required this.qualifications,
    required this.areaofInterest,
  });

  factory TherapistModel.fromMap(map) {
    return TherapistModel(
      tid: map[' tid'],
      name: map['username'],
      title: map['title'],
      photoURL: map['photoURL'],
      email: map['email'],
      phoneNo: map['phoneNo'],
      workplace: map['workplace'],
      qualifications: map['qualifications'],
      areaofInterest: map['areaofInterest'],
    );
  }
  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      ' tid': tid,
      'name': name,
      'title': title,
      'photoURL': photoURL,
      'email': email,
      'phoneNo': phoneNo,
      'workplace': workplace,
      'qualifications': qualifications,
      'areaofInterest': areaofInterest,
    };
  }

  @override
  List<Object?> get props => [
        tid,
        name,
        title,
        photoURL,
        email,
        phoneNo,
        workplace,
        qualifications,
        areaofInterest
      ];
}
