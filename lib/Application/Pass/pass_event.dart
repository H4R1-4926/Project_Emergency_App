part of 'pass_bloc.dart';

@freezed
class PassEvent with _$PassEvent {
  const factory PassEvent.pressed() = Pressed;
  const factory PassEvent.pressed2() = Pressed2;
  const factory PassEvent.pressed3() = Pressed3;
  const factory PassEvent.unpressed() = UnPressed;
}
