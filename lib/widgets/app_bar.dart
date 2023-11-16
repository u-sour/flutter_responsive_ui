import 'package:flutter/material.dart';
import '../utils/constants.dart';

AppBar appBar({required String title}) => AppBar(
      backgroundColor: CommonColor.appBarBgColor,
      title: Text(title),
    );
