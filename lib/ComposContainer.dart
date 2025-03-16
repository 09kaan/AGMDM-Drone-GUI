import 'package:flutter/material.dart';

class Composcontainer {
  final dynamic state;

  Composcontainer({required this.state});

  Widget buildComposWidget(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: const AlignmentDirectional(0, 0),
    );
    //imported global state from UI.dart you can use this imported state to change the state of the widget
  }
}
