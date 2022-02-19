import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_repository/test_repository.dart';
import 'package:equatable/equatable.dart';

part 'stream_event.dart';
part 'stream_state.dart';

class StreamBloc extends Bloc<StreamEvent, StreamState> {
  StreamBloc({required TestRepository testRepository})
      : _testRepository = testRepository,
        super(StreamInitial()) {
    _testRepository.getData().listen(
      (event) {
        for (final element in event) {
          print(element);
        }
      },
    );
    on<StreamEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final TestRepository _testRepository;
}
