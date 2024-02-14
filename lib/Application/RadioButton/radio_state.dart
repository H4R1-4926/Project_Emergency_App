part of 'radio_bloc.dart';

@freezed
class RadioState with _$RadioState {
  const factory RadioState({
    required String value,
    required String lvlValue,
  }) = _RadioState;
  factory RadioState.initial() {
    return const RadioState(value: '', lvlValue: '');
  }
}
