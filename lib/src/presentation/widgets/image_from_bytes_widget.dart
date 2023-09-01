import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageFromBytesWidget extends StatelessWidget {
  const ImageFromBytesWidget({
    required this.imageBytes,
    this.width,
    Key? key,
  }) : super(key: key);

  final Uint8List imageBytes;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.memory(
        imageBytes,
        width: width,
      ),
    );
  }
}
