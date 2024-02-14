part of 'lottie_bloc.dart';

@freezed
class LottieState with _$LottieState {
  const factory LottieState({
    required bool isstarted,
    required bool isended,
  }) = _LottieState;
  factory LottieState.initial() {
    return const LottieState(isstarted: false, isended: false);
  }
}
