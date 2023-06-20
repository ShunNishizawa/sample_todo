import 'package:flutter_riverpod/flutter_riverpod.dart';

final basePageProvider = StateNotifierProvider<BasePageController, int>((ref) {
  return BasePageController(0);
});

class BasePageController extends StateNotifier<int> {
  BasePageController(super.state);

  void setPosition(int value) {
    state = value;
  }
}
