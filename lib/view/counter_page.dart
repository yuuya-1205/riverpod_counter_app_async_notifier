import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_counter_app/logic/counter_notifier.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンターアプリ'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('First Value: ${count.firstValue}'),
          Text('Second Value:${count.secondValue}'),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(counterNotifierProvider.notifier)
                      .incrementFirstValue();
                },
                child: const Text('Increment First Value'),
              ),
              const SizedBox(width: 40),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(counterNotifierProvider.notifier)
                      .decrementFirstValue();
                },
                child: const Text('Decrement First Value'),
              ),
              const SizedBox(width: 40),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(counterNotifierProvider.notifier)
                      .incrementSecondValue();
                },
                child: const Text('Increment Second Value'),
              ),
              const SizedBox(width: 40),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(counterNotifierProvider.notifier)
                      .decrementSecondValue();
                },
                child: const Text('Decrement Second Value'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
