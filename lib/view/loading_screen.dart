import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_chat/helper/receiver.dart';

import 'my_app.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Receiver.getUserInfo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp(snapshot.data);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}