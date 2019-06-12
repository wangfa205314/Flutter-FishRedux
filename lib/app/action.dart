import 'package:fish_redux/fish_redux.dart';

enum AppAction {

  tapNavigationBar,

}

class AppActionCreator {

  static Action onTapNavigationBar(int index) {
    return Action(AppAction.tapNavigationBar,payload: index);
  }
}
