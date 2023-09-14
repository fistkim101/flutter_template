part of 'loading_spinner_bloc.dart';

@immutable
abstract class LoadingSpinnerEvent {}

class Processing extends LoadingSpinnerEvent {
  final String targetScreen;

  Processing(this.targetScreen);
}

class Finished extends LoadingSpinnerEvent {}

class Failed extends LoadingSpinnerEvent {}
