import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_counter_app/model/counter.dart';

final counterNotifierProvider = NotifierProvider<CounterNotifier, Counter>(() {
  return CounterNotifier();
});

class CounterNotifier extends Notifier<Counter> {
  @override
  Counter build() {
    return const Counter(
      firstValue: 0,
      secondValue: 0,
    );
  }

  void incrementFirstValue() {
    state = state.copyWith(firstValue: state.firstValue + 1);
  }

  void incrementSecondValue() {
    state = state.copyWith(secondValue: state.secondValue + 1);
  }

  void decrementFirstValue() {
    state = state.copyWith(firstValue: state.firstValue - 1);
  }

  void decrementSecondValue() {
    state = state.copyWith(secondValue: state.secondValue - 1);
  }
}
