import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'radio_event.dart';
part 'radio_state.dart';
part 'radio_bloc.freezed.dart';

@injectable
class RadioBloc extends Bloc<RadioEvent, RadioState> {
  RadioBloc() : super(RadioState.initial()) {
    on<RadioButton>((event, emit) {
      emit(RadioState(value: event.value, lvlValue: state.lvlValue));
    });
    on<RadioButtonlvl>((event, emit) {
      emit(RadioState(value: state.value, lvlValue: event.value));
    });
  }
}
