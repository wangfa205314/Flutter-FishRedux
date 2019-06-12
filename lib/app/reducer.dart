import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AppState> buildReducer() {
  return asReducer(
    <Object, Reducer<AppState>>{
      AppAction.tapNavigationBar: _tapNavigationBar,
    },
  );
}

AppState _tapNavigationBar(AppState state, Action action) {
  AppState newState = state.clone();
  newState.currentIndex = action.payload;
  return newState;
}
