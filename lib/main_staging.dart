// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:test_project/app/app.dart';
import 'package:test_project/bootstrap.dart';
import 'package:test_repository/test_repository.dart';

void main() {
  final testRepository = TestRepository();

  bootstrap(() => App(testRepository: testRepository));
}
