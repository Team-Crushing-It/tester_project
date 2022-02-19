import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/textfield/bloc/textfield_bloc.dart';

class TextfieldPage extends StatelessWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TextfieldBloc(),
      child: const TextFieldView(),
    );
  }
}

class TextFieldView extends StatelessWidget {
  const TextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TextfieldBloc, TextfieldState>(
        builder: (context, state) {
          print(state.text);
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  key: UniqueKey(),
                  initialValue: state.text,
                  onChanged: (value) =>
                      context.read<TextfieldBloc>().add(OnValueChanged(value)),
                ),
                ElevatedButton(
                  onPressed: () =>
                      context.read<TextfieldBloc>().add(OnButtonPressed()),
                  child: Text("Button"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
