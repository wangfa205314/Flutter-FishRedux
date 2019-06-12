import 'package:fish_redux/fish_redux.dart';
import 'package:connectivity/connectivity.dart';
import 'state.dart';

Effect<AppState> buildEffect() {
  return combineEffects(<Object, Effect<AppState>>{

    Lifecycle.initState:_init,

  });
}

Future _init(Action action, Context<AppState> ctx) async {

  var connectivityResult = await (new Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    // I am connected to a mobile network.
  } else if (connectivityResult == ConnectivityResult.wifi) {
    // I am connected to a wifi network.
  }
}
