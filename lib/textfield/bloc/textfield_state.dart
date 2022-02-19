// Textfield State
part of 'textfield_bloc.dart';

class TextfieldState {
  final String text;

  TextfieldState({required this.text});

  factory TextfieldState.initial() {
    return TextfieldState(text: '');
  }

  TextfieldState copyWith({String? text}) {
    return TextfieldState(text: text ?? this.text);
  }
}
