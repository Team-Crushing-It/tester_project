import 'package:rxdart/subjects.dart';

/// {@template test_package}
/// My new Flutter package
/// {@endtemplate}
class TestRepository {
  /// {@macro test_Repository}
  TestRepository() {
    _init();
  }

  final _testStreamController =
      BehaviorSubject<List<int>>.seeded(const [4, 5, 6]);

  void _init() {
    fetch().listen((event) {
      _testStreamController.add([DateTime.now().second]);
    });
  }

  /// Our test stream
  Stream<List<int>> getData() => _testStreamController.asBroadcastStream();

  // simple stream that triggers ever 5 seconds
  Stream<int> fetch() {
    return Stream.periodic(const Duration(seconds: 5), (x) {
      return x;
    }).takeWhile(
      (element) => true,
    );
  }
}
