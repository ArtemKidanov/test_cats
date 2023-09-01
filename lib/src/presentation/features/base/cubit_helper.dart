import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin CubitHelper<B extends BlocBase<S>, S> {
  Widget observe({
    required BlocWidgetBuilder<S> builder,
    BlocBuilderCondition<S>? buildWhen,
  }) {
    return BlocBuilder<B, S>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }

  Widget listen({
    required BlocWidgetListener<S> listener,
    BlocListenerCondition<S>? listenWhen,
    Widget? child,
  }) {
    return BlocListener<B, S>(
      listener: listener,
      listenWhen: listenWhen,
      child: child,
    );
  }

  Widget consume({
    required BlocWidgetListener<S> listener,
    required BlocWidgetBuilder<S> builder,
    BlocListenerCondition<S>? listenWhen,
    BlocBuilderCondition<S>? buildWhen,
  }) {
    return BlocConsumer<B, S>(
      builder: builder,
      listener: listener,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }

  B? cubit(BuildContext context) {
    return BlocProvider.of<B>(context);
  }

  T cubitByType<T extends BlocBase<dynamic>>(BuildContext context) {
    return BlocProvider.of<T>(context);
  }
}
