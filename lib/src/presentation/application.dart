import 'package:flutter/material.dart';
import 'package:test_cats/src/presentation/app_theme/cat_facts_app_theme.dart';
import 'package:test_cats/src/presentation/routing/utils.dart';
import 'package:test_cats/src/presentation/screens/cat_fact_screen/cat_fact_screen.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CatFactsAppTheme.getThemeData,
      onGenerateRoute: appRoutesGenerator,
      initialRoute: CatFactScreen.screenName,
    );
  }
}
