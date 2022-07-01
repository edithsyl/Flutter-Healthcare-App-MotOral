part of 'exercise_bloc.dart';

abstract class ExerciseState extends Equatable {
  const ExerciseState();
  
  @override
  List<Object> get props => [];
}

class ExerciseInitial extends ExerciseState {}
