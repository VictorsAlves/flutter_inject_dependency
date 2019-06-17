import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:relacionamento_app/src/home/home_bloc.dart';

import 'package:relacionamento_app/src/home/home_page.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:relacionamento_app/src/shared/repositories/client_http.dart';
import 'package:relacionamento_app/src/shared/repositories/general_api.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var app = MaterialApp(
      title: 'Te vi e Te Kiss',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: HomePage(),
    );

    return BlocProvider(
      child: app,
      dependencies: [
        Dependency((i) => CustomDio()),
        Dependency((i) => GeneralApi(i.get<CustomDio>().getClient())),
      ],
      blocs: [
        Bloc((i) => HomeBloc(i.get<GeneralApi>())),
      ],
    );
  }
}
