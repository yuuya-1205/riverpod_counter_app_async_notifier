import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Counter extends Equatable {
  final int firstValue;
  final int secondValue;

  const Counter({
    required this.firstValue,
    required this.secondValue,
  });

  copyWith({
    int? firstValue,
    int? secondValue,
  }) {
    return Counter(
      firstValue: firstValue ?? this.firstValue,
      secondValue: secondValue ?? this.secondValue,
    );
  }

  @override
  List<Object?> get props => [firstValue, secondValue];
}
