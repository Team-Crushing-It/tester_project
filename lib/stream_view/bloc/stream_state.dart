part of 'stream_bloc.dart';

enum StreamStatus { initial, loading, success, failure }

class StreamState extends Equatable {
  const StreamState._({
    this.integers = const [0],
    this.status = StreamStatus.initial,
  });

  const StreamState.initialized() : this._();

  const StreamState.updated(List<int> integers) : this._(integers: integers);

  final List<int>? integers;
  final StreamStatus status;

  @override
  List<Object?> get props => [integers];

  StreamState copyWith({
    List<int>? integers,
    StreamStatus? status,
  }) {
    return StreamState._(
      integers: integers ?? this.integers,
      status: status ?? this.status,
    );
  }
}
