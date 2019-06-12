import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(AppState state, Dispatch dispatch, ViewService viewService) {
  return MaterialApp (
    theme: ThemeData(primarySwatch: Colors.blue,),
    home: Scaffold(
      body:state.page[state.currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.account_balance),title: new Text("Home")),
          BottomNavigationBarItem(icon:Icon(Icons.brightness_7),title: new Text("Setting")),
        ],
        currentIndex: state.currentIndex,
        onTap: (index){
          dispatch(AppActionCreator.onTapNavigationBar(index));
        },
      ),
    ),
  );
}
