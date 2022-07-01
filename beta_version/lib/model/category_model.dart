import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;

  const Category({
    required this.name,
  });
  @override
  List<Object?> get props => [name];

  // everytime we get data from firestore, we receive snapshots from it
  // need to compare data from firebase with instance in category class
  static Category fromSnapshot(DocumentSnapshot snap) {
    Category category = Category(name: snap['name']);
    return category;
  }

  static List<Category> categories = const [
    Category(
      name: 'Tongue',
    ),
    Category(
      name: 'Lip',
    ),
    Category(
      name: 'Cheek',
    ),
    Category(
      name: 'Jaw',
    ),
  ];
}
