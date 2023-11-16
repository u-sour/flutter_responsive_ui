import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';
import 'package:flutter_responsive_ui/widgets/tile.dart';

import '../widgets/app_bar.dart';
import '../widgets/box.dart';
import '../widgets/drawer.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.defaultBgColor,
      appBar: appBar(title: "App"),
      drawer: drawer(),
      body: Column(children: [
        // 4 box
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
