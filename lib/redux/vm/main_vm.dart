import 'package:flutter_yyts/redux/states/dynamic_state.dart';
import 'package:flutter_yyts/redux/states/home_state.dart';
import 'package:flutter_yyts/redux/states/lib_state.dart';
import 'package:flutter_yyts/redux/states/main_state.dart';
import 'package:flutter_yyts/redux/states/profile_state.dart';
import 'package:flutter_yyts/redux/states/rank_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_yyts/redux/reducers/main_reducer.dart';

abstract class ViewModel {
  final Store<ReduxState> store;

  ViewModel(this.store);
}

class StoreContainer {
  static final Store<ReduxState> global = reduxStore();
}

Store<ReduxState> reduxStore() => Store<ReduxState>(reduxReducer,
    initialState: ReduxState(
      home: HomeState.initialState(),
      profile: ProfileState.initialState(),
      rank: RankState.initialState(),
      lib: LibState.initialState(),
      dynamicState: DynamicState.initialState(),
    ));
