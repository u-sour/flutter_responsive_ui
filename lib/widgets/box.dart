import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(color: CommonColor.boxBgColor),
    );
  }
}
