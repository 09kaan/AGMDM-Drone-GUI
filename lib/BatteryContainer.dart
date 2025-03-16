import 'package:flutter/material.dart';

class Battery {
  final dynamic state;

  Battery({required this.state});

  Widget buildBatteryWidget(BuildContext context) {
    return Container(
      width: 220,
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
