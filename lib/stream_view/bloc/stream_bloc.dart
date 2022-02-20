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
    on<StreamSubscriptionRequested>(_onSubscriptionRequested);
    on<StreamChanged>((event, emit) {
      emit(state.copyWith(integers: event.integers));
    });
  }

  Future<void> _onSubscriptionRequested(
    StreamSubscriptionRequested event,
    Emitter<StreamState> emit,
  ) async {
    emit(state.copyWith(status: StreamStatus.loading));

    await emit.forEach<List<int>>(
      _testRepository.getData(),
      onData: (integers) => state.copyWith(
        status: StreamStatus.success,
        integers: integers,
      ),
      onError: (_, __) => state.copyWith(
        status: StreamStatus.failure,
      ),
    );
  }

  final TestRepository _testRepository;
}
