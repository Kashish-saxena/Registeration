import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    super.key,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
