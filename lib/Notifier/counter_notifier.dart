import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifierProvider = AsyncNotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});

/// ここのintはstate
class CounterNotifier extends AsyncNotifier<int> {
  @override

  /// ここで初期値を設定する
  /// 今回はカウンターアプリなので0
  Future<int> build() async {
    return 0;
  }

  Future<void> increment() async {
    final current = state.value ?? 0;

    state = const AsyncValue.loading();
    state = AsyncValue.data(current + 1);
  }

  Future<void> decrement() async {
    ///このstateってどこからきているのか？
    ///AsyncValueってなに？
    ///loadingってロードするの？
    print(state);
    print(state.value);

    final current = state.value ?? 0;

    /// ここのstateは『現在の値を取得している』
    state = const AsyncValue.loading();
    print("decrement: $state");

    /// ここのstateは『現在の値から-1を引いた値』
    state = AsyncValue.data(current - 1);
    print("decrement: $state");
  }
}


/// 調べること
/// ①AsyncNotifierProviderってなに？
/// ②AsyncNotifierProviderのnotifierってなに？
/// ③AsyncNotifierProviderのnotifierのbuildってなに？
/// ④AsyncValueってなに？
