import 'package:flutter/cupertino.dart';

import '../models/counter_model.dart';

class CounterViewModel extends ChangeNotifier{
  final CounterModel _model = CounterModel();

  int get counter => _model.counter;
  bool isTextVisible = true;

  void increment() {
    _model.counter++;
    notifyListeners();
  }

  void toggleTextVisibility() {
    isTextVisible =! isTextVisible;
    notifyListeners();
  }
}
