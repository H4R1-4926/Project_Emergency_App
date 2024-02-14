part of 'radio_bloc.dart';

@freezed
class RadioEvent with _$RadioEvent {
  const factory RadioEvent.radioButton({required String value}) = RadioButton;
  const factory RadioEvent.radioButtonLvl({required String value}) =
      RadioButtonlvl;
}
