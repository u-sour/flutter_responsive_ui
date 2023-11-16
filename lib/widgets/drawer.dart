import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';

Drawer drawer() => Drawer(
      backgroundColor: CommonColor.defaultBgColor,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Icon(Icons.star)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Dashboard"),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("Chat"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
        ],
      ),
    );
