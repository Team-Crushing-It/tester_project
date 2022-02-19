// Textfield Events
part of 'textfield_bloc.dart';

@immutable
abstract class TextfieldEvent {}

class OnValueChanged extends TextfieldEvent {
  final String input;
  OnValueChanged(this.input);
}

class OnButtonPressed extends TextfieldEvent {}
