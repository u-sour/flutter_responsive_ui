import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/box.dart';
import '../widgets/drawer.dart';
import '../widgets/tile.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.defaultBgColor,
      appBar: appBar(title: "App"),
      drawer: drawer(),
      body: Column(children: [
        // 4 box
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const Box();
                }),
          ),
        ),
        // tiles
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Tile(index: index);
              }),
        )
      ]),
    );
  }
}
