import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NetStatusState> buildReducer() {
  return asReducer(
    <Object, Reducer<NetStatusState>>{
      NetStatusAction.action: _onAction,
    },
  );
}

NetStatusState _onAction(NetStatusState state, Action action) {
  final NetStatusState newState = state.clone();
  return newState;
}
