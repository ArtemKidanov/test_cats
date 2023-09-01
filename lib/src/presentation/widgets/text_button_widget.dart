import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    required this.text,
    required this.onButtonTappedCallback,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function() onButtonTappedCallback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onButtonTappedCallback,
      style: Theme.of(context).textButtonTheme.style,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
