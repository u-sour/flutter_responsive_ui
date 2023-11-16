import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Tile extends StatelessWidget {
  final int index;
  const Tile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 80.0,
          color: CommonColor.tileBgColor,
          child: Center(
              child: Text(
            "${index + 1}",
            style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
