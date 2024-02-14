import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pass_event.dart';
part 'pass_state.dart';
part 'pass_bloc.freezed.dart';

@injectable
class PassBloc extends Bloc<PassEvent, PassState> {
  PassBloc() : super(PassState.initial()) {
    on<Pressed>((event, emit) {
      emit(const PassState(toggle: false, toggle2: true, toggle3: true));
    });
    on<Pressed2>((event, emit) {
      emit(const PassState(toggle: true, toggle2: false, toggle3: true));
    });
    on<Pressed3>((event, emit) {
      emit(const PassState(toggle: true, toggle2: true, toggle3: false));
    });

    on<UnPressed>((event, emit) {
      emit(const PassState(toggle: true, toggle2: true, toggle3: true));
    });
  }
}
