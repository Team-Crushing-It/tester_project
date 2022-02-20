part of 'stream_bloc.dart';

abstract class StreamEvent extends Equatable {
  const StreamEvent();

  @override
  List<Object> get props => [];
}

class StreamChanged extends StreamEvent {
  const StreamChanged(this.integers);

  final List<int> integers;

  @override
  List<Object> get props => [integers];
}

class StreamSubscriptionRequested extends StreamEvent {}
