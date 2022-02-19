import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_repository/test_repository.dart';
import 'package:equatable/equatable.dart';

part 'stream_event.dart';
part 'stream_state.dart';

class StreamBloc extends Bloc<StreamEvent, StreamState> {
  StreamBloc({required TestRepository testRepository})
      : _testRepository = testRepository,
        super(StreamState.initialized()) {
    _testRepository.getData().listen(
      (event) {
        add(StreamChanged(event));
      },
    );

    on<StreamChanged>((event, emit) {
      emit(state.copyWith(integers: event.integers));
    });
  }

  final TestRepository _testRepository;
}
