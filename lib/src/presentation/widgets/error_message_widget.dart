import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({
    required this.errorMessage,
    Key? key,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          errorMessage,
          style: const TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
    );
  }
}
