// Textfield Bloc
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'textfield_event.dart';
part 'textfield_state.dart';

class TextfieldBloc extends Bloc<TextfieldEvent, TextfieldState> {
  TextfieldBloc() : super(TextfieldState.initial()) {
    on<OnValueChanged>(
        (event, emit) => emit(state.copyWith(text: event.input)));
    on<OnButtonPressed>((event, emit) => emit(state.copyWith(text: '')));
  }
}
