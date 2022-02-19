// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_project/counter/counter.dart';
import 'package:test_project/l10n/l10n.dart';
import 'package:test_project/stream_view/stream_view.dart';
import 'package:test_project/textfield/view/textfield.dart';
import 'package:test_repository/test_repository.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required TestRepository testRepository,
  })  : _testRepository = testRepository,
        super(key: key);

  final TestRepository _testRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _testRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const StreamViewPage(),
    );
  }
}
