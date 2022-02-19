import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/stream_view/bloc/stream_bloc.dart';
import 'package:test_repository/test_repository.dart';

class StreamViewPage extends StatelessWidget {
  const StreamViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => StreamBloc(testRepository: context.read<TestRepository>()),
      child: const StreamView(),
    );
  }
}

class StreamView extends StatelessWidget {
  const StreamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('something');
  }
}
