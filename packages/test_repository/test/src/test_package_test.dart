// ignore_for_file: prefer_const_constructors
import 'package:flutter_test/flutter_test.dart';
import 'package:test_repository/test_repository.dart';

void main() {
  group('TestPackage', () {
    test('can be instantiated', () {
      expect(TestRepository(), isNotNull);
    });
  });
}
