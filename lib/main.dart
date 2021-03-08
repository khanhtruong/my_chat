import 'dart:ui';

import 'package:my_chat/model/init_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_chat/view/loading_screen.dart';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
    default: return LoadingScreen();
  }
}
