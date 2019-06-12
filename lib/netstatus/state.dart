import 'package:fish_redux/fish_redux.dart';

class NetStatusState implements Cloneable<NetStatusState> {

  @override
  NetStatusState clone() {
    return NetStatusState();
  }
}

NetStatusState initState(Map<String, dynamic> args) {
  return NetStatusState();
}
