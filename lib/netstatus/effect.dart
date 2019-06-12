import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NetStatusState> buildEffect() {
  return combineEffects(<Object, Effect<NetStatusState>>{
    NetStatusAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NetStatusState> ctx) {
}
