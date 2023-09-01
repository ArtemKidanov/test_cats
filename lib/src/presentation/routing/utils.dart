import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_cats/src/presentation/routing/app_routes.dart';
import 'package:test_cats/src/presentation/routing/cubit_host.dart';

Route<dynamic>? appRoutesGenerator(RouteSettings settings) {
  return appRoutesMap[settings.name]!(settings);
}

MaterialPageRoute<dynamic> screen(
  Widget child, {
  required RouteSettings settings,
}) {
  return MaterialPageRoute<dynamic>(builder: (c) => child, settings: settings);
}

MaterialPageRoute<dynamic> cubitScreen<T extends Cubit<Object?>>(
  Widget child, {
  required RouteSettings settings,
  Function(T)? onCreate,
  bool lazy = false,
}) {
  return MaterialPageRoute<dynamic>(
    builder: (c) => CubitHost<T>(
      builder: (c) => child,
      onCreate: onCreate,
      lazy: lazy,
    ),
    settings: settings,
  );
}
