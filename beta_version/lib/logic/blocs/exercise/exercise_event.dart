part of 'exercise_bloc.dart';

abstract class ExerciseEvent extends Equatable {
  const ExerciseEvent();

  @override
  List<Object> get props => [];
}

/// initialize the [ExerciseBloc]
class LoadExercises extends ExerciseEvent {}

/// check which are the actual [exercises] and update them to the screen
class UpdateExercises extends ExerciseEvent {
  final List<Exercise> exercises;

  UpdateExercises(this.exercises);

  @override
  List<Object> get props => [exercises];
}
