import 'package:flutter_test/flutter_test.dart';
import '../../lib/viewmodels/counter_viewmodel.dart';

void main() {
  group('CounterViewModel Test', () {
    test('Initial counter value should be 0', () {
      final viewModel = CounterViewModel();
      expect(viewModel.counter, 0);
    });

    test('Counter value should be incremented via ViewModel', () {
      final viewModel = CounterViewModel();
      viewModel.increment();
      expect(viewModel.counter, 1);
    });

    test('Text visibility test via ViewModel', () {
      final viewModel = CounterViewModel();
      viewModel.toggleTextVisibility();
      expect(viewModel.isTextVisible, false);
    });
  });
}
