part of 'category_bloc.dart';

/// create [CategoryLoading] and [CategoryLoaded] states

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryLoading extends CategoryState {}

/// take a list of [categories] and pass it into the constructor
/// the list of [categories] will be initialized as an empty list
class CategoryLoaded extends CategoryState {
  final List<Category> categories;

  CategoryLoaded({this.categories = const <Category>[]});

  @override
  List<Object> get props => [categories];
}
