import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CubitHost<T extends Cubit<Object?>> extends StatelessWidget {
  const CubitHost({
    required this.builder,
    this.onCreate,
    this.lazy = false,
    Key? key,
  }) : super(key: key);

  final WidgetBuilder builder;
  final Function(T)? onCreate;
  final bool lazy;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final getIt = GetIt.instance;

        if (!getIt.isRegistered<T>()) {
          throw Exception('Type $T is not marked as injectable');
        }

        final cubit = getIt.get<T>();
        onCreate?.call(cubit);

        return cubit;
      },
      lazy: lazy,
      child: Builder(
        builder: builder,
      ),
    );
  }
}
