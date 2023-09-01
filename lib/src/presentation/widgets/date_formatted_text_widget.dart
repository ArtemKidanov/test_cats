import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormattedTextWidget extends StatelessWidget {
  const DateFormattedTextWidget({
    required this.dateTime,
    Key? key,
  }) : super(key: key);

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMMd(Platform.localeName).format(dateTime),
    );
  }
}
