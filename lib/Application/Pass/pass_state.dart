part of 'pass_bloc.dart';

@freezed
class PassState with _$PassState {
  const factory PassState({
    required bool toggle,
    required bool toggle2,
    required bool toggle3,
  }) = _PassState;
  factory PassState.initial() {
    return const PassState(toggle: true, toggle2: true, toggle3: true);
  }
}
