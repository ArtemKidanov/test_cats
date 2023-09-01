import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cats/src/di/di_init.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
