import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lottie_event.dart';
part 'lottie_state.dart';
part 'lottie_bloc.freezed.dart';

@injectable
class LottieBloc extends Bloc<LottieEvent, LottieState> {
  LottieBloc() : super(LottieState.initial()) {
    on<_Started>((event, emit) async {
      emit(const LottieState(isstarted: true, isended: false));
      await Future.delayed(const Duration(milliseconds: 1300));
      emit(const LottieState(isstarted: false, isended: true));
    });
  }
}
