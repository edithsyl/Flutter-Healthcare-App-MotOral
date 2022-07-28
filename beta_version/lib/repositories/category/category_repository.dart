// import 'package:beta_version/models/category_model.dart';
// import 'package:beta_version/repositories/category/base_category_repository.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class CategoryRepository extends BaseCategoryRepository {
//   final FirebaseFirestore _firebaseFirestore; //create an instance

//   // initialize in constructor, could be null
//   CategoryRepository({FirebaseFirestore? firebaseFirestore})
//       : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

//   @override
//   Stream<List<Category>> getAllCategories() {
//     return _firebaseFirestore
//         .collection('categories') // retrieve categories collection
//         .snapshots() // return a stream of query snapshots = all docs inside the collection
//         .map((snapshot) {
//       return snapshot.docs.map((doc) => Category.fromSnapshot(doc)).toList();
//     }); // for each doc, return a category class instance
//   }
// }
