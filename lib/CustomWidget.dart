// CustomWidget.dart
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.orange,
      child: Center(
        child: Text('Custom Widget'),
      ),
    );
  }
}