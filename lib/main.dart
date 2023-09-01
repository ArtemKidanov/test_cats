import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test_cats/src/di/di_init.dart';
import 'package:test_cats/src/presentation/application.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  await Hive.initFlutter();
  await configureDependencies();
  runApp(const Application());
}
