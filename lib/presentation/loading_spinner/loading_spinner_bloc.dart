import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../barrel.dart';
import '../../application/types/process_status_type.dart';

part 'loading_spinner_event.dart';
part 'loading_spinner_state.dart';

class LoadingSpinnerBloc
    extends Bloc<LoadingSpinnerEvent, LoadingSpinnerState> {
  LoadingSpinnerBloc() : super(LoadingSpinnerState.initial()) {
    on<Processing>((event, emit) {
      emit(LoadingSpinnerState.processing(event.targetScreen));
    });
    on<Finished>((event, emit) {
      emit(LoadingSpinnerState.finished());
    });
    on<Failed>((event, emit) {
      emit(LoadingSpinnerState.exception());
    });
  }

  void processing(String targetScreen) {
    add(Processing(targetScreen));
  }

  void finished() {
    add(Finished());
  }

  void failed() {
    add(Failed());
  }
}
