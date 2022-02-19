part of 'stream_bloc.dart';

class StreamState extends Equatable {
  const StreamState._({required this.integers});

  StreamState.initialized() : this._(integers: []);

  const StreamState.updated(List<int> integers) : this._(integers: integers);

  final List<int>? integers;

  @override
  List<Object?> get props => [integers];

  StreamState copyWith({
    List<int>? integers,
  }) {
    return StreamState._(
      integers: integers ?? this.integers,
    );
  }
}
