import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NetStatusPage extends Page<NetStatusState, Map<String, dynamic>> {
  NetStatusPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NetStatusState>(
                adapter: null,
                slots: <String, Dependent<NetStatusState>>{
                }),
            middleware: <Middleware<NetStatusState>>[
            ],);

}
