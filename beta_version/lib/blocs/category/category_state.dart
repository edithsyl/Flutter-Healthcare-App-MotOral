part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Category> categories;

  CategoryLoaded(
      {this.categories = const <
          Category>[]}); //constructor: initialize categories as an empty list

  @override
  List<Object> get props => [categories];
}
