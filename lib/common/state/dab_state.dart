import 'package:flutter_loan/common/bean/user.dart';
import 'package:flutter_loan/common/state/user_reducer.dart';

class DABState{
  User userInfo;

  DABState({this.userInfo});

}

///通过 Reducer 创建 用于store 的
///
DABState appReducer(DABState state, action) {
  return DABState(
    ///通过 UserReducer 将 DABState 内的 userInfo 和 action 关联在一起
    userInfo: userReducer(state.userInfo, action),
  );
}
