/// {@template test_package}
/// My new Flutter package
/// {@endtemplate}
class TestRepository {
  /// {@macro test_Repository}
  TestRepository();

  /// simple stream that triggers ever 5 seconds
  Stream<List<int>> getData() {
    return Stream.periodic(const Duration(seconds: 3), (_) {
      //await function call to api
      return [DateTime.now().second];
    }).asBroadcastStream();
  }
}
