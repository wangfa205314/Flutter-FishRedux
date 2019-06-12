import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_netstatus/homepage/page.dart';
import 'package:flutter_netstatus/setting/page.dart';

class AppState implements Cloneable<AppState> {

  List<Widget> page;
//  AbstractRoutes routes;
  int currentIndex;
  @override
  AppState clone() {
    return AppState()
//      ..routes = routes
      ..currentIndex = currentIndex

      ..page = page
    ;
  }
}

AppState initState(Map<String, dynamic> args) {
  AppState state = AppState();
  state.currentIndex = 0;
//  state.routes = HybridRoutes(routes: <AbstractRoutes>[
//    PageRoutes(
//      pages: <String, Page<Object, dynamic>>{
//        'HomePage': HomePage(),
//      },
//    ),
//  ]);

  state.page =<Widget>[
    HomePage().buildPage(null),
    SettingPage().buildPage(null),
  ];

  return state;
}
