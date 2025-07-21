import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});

/// ここのintはstate
class CounterNotifier extends Notifier<int> {
  @override

  /// ここで初期値を設定する
  /// 今回はカウンターアプリなので0
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}


/// 調べること
/// ①AsyncNotifierProviderってなに？
/// ②AsyncNotifierProviderのnotifierってなに？
/// ③AsyncNotifierProviderのnotifierのbuildってなに？
/// ④AsyncValueってなに？
/// ⑤こんばんは
