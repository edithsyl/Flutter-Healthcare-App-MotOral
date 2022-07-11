import 'dart:async';

import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/repositories/exercise/exercise_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ExerciseRepository _exerciseRepository;
  StreamSubscription? _exerciseSubscription;

  ExerciseBloc({required ExerciseRepository exerciseRepository})
      : _exerciseRepository = exerciseRepository,
        super(ExerciseLoading());

  /// defining methods:
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is LoadExercises) {
      yield* _mapLoadExercisesToState();
    }
    if (event is UpdateExercises) {
      yield* _mapUpdateExercisesToState(event);
    }
  }

  Stream<ExerciseState> _mapLoadExercisesToState() async* {
    _exerciseSubscription?.cancel();
    _exerciseSubscription = _exerciseRepository
        .getAllExercises()
        .listen((exercises) => add(UpdateExercises(exercises)));
  }

  Stream<ExerciseState> _mapUpdateExercisesToState(
      UpdateExercises event) async* {
    yield ExerciseLoaded(exercises: event.exercises);
  }
}

// review: https://www.youtube.com/watch?v=O8-Q6RyO8QY&ab_channel=MaxonFlutter
