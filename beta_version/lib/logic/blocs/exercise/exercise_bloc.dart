import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:beta_version/repositories/exercise/exercise_repository.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

// class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
//   StreamSubscription? _exerciseSubscription;
//   final ExerciseRepository _exerciseRepository;

//   ExerciseBloc({required ExerciseRepository exerciseRepository})
//       : _exerciseRepository = exerciseRepository,
//         super(ExerciseLoading());
// }
