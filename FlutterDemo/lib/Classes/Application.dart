import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../Classes/routes.dart';

class Application extends StatelessWidget {
  const Application({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      onGenerateRoute: router.generator,
    );
  }
}
