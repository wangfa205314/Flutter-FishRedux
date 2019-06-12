import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(SettingState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.indigoAccent,
      title: Text("Setting"),
    ),
    body: Container(
      child: Text("SettingPage"),
    ),
  );
}
