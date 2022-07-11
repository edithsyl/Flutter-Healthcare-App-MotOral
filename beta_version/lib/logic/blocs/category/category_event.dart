part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

/// initialize the [CategoryBloc]
class LoadCategories extends CategoryEvent {}

/// check which are the actual [categories] and update them to the screen
class UpdateCategories extends CategoryEvent {
  final List<Category> categories;

  UpdateCategories(this.categories);

  @override
  List<Object> get props => [categories];
}
