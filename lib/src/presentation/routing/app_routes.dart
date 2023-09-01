import 'package:flutter/cupertino.dart';
import 'package:test_cats/src/presentation/features/cat_fact_screen/cat_fact_cubit.dart';
import 'package:test_cats/src/presentation/features/cat_fact_screen/cat_fact_screen.dart';
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_cubit.dart';
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_screen.dart';
import 'package:test_cats/src/presentation/routing/utils.dart';

final appRoutesMap = <String, Route<dynamic>? Function(RouteSettings)>{
  CatFactScreen.screenName: (settings) => cubitScreen<CatFactCubit>(
        const CatFactScreen(),
        settings: settings,
        onCreate: (cubit) => cubit.onCreated(),
      ),
  CatFactsListScreen.screenName: (settings) => cubitScreen<CatFactsListCubit>(
        const CatFactsListScreen(),
        settings: settings,
        onCreate: (cubit) => cubit.onCreated(),
      ),
};
