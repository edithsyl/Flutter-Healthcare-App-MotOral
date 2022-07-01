import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseBloc() : super(ExerciseInitial()) {
    on<ExerciseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
