part of 'loading_spinner_bloc.dart';

class LoadingSpinnerState {
  final ProcessStatusType processStatusType;
  final String? targetScreen;

  LoadingSpinnerState({required this.processStatusType, this.targetScreen});

  factory LoadingSpinnerState.initial() {
    return LoadingSpinnerState(
      processStatusType: ProcessStatusType.initial,
    );
  }

  factory LoadingSpinnerState.processing(String targetScreen) {
    return LoadingSpinnerState(
      processStatusType: ProcessStatusType.processing,
      targetScreen: targetScreen,
    );
  }

  factory LoadingSpinnerState.finished() {
    return LoadingSpinnerState(
      processStatusType: ProcessStatusType.finished,
    );
  }

  factory LoadingSpinnerState.exception() {
    return LoadingSpinnerState(
      processStatusType: ProcessStatusType.exception,
    );
  }
}
