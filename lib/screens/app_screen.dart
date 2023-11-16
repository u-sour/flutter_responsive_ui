import 'package:flutter/material.dart';
import '../responsive/responsive_layout.dart';
import '../responsive/desktop_scaffold.dart';
import '../responsive/mobile_scaffold.dart';
import '../responsive/tablet_scaffold.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold()),
    );
  }
}
