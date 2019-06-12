import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NetStatusAction { action }

class NetStatusActionCreator {
  static Action onAction() {
    return const Action(NetStatusAction.action);
  }
}
