part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

// initialize category bloc
class LoadCategories extends CategoryEvent {}

// check which category and update to the screen
class UpdateCategories extends CategoryEvent {
  final List<Category> categories;
  UpdateCategories(this.categories);

  @override
  List<Object> get props => [categories];
}
