import 'package:flutter/material.dart';

class Log3 {
  final dynamic state;

  Log3({required this.state});

  Widget buildLog3Widget(BuildContext context) {
    return Container(
      width: 400,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        shape: BoxShape.rectangle,
      ),
      alignment: const AlignmentDirectional(0, 0),
    );
  }
}
