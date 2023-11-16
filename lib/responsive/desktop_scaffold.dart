import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/box.dart';
import '../widgets/drawer.dart';
import '../widgets/tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.defaultBgColor,
      appBar: appBar(title: "App"),
      body: Row(
        children: [
          // open drawer (left sidebar)
          drawer(),
          //body
          Expanded(
            flex: 3,
            child: Column(children: [
              // 4 box
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          // right sidebar
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: CommonColor.boxBgColor,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
