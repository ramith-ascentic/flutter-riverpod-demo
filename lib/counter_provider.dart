import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterChangerNotifier extends ChangeNotifier {

  int counterState = 0;
  
  void incrementCounter() {
    counterState++;
    notifyListeners();
  }
  
  void decrementCounter() {
    counterState--;
    notifyListeners();
  }

}

final counterChangerNotifierProvider = ChangeNotifierProvider<CounterChangerNotifier>((ref) {
  return CounterChangerNotifier();
});

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});
