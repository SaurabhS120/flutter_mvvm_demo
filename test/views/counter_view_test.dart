import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import '../../lib/viewmodels/counter_viewmodel.dart';
import '../../lib/views/counter_view.dart';

void main() {
  testWidgets('CounterView has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
        child: MaterialApp(
          home: CounterView(),
        ),
      ),
    );

    // Verify the title
    expect(find.text('MVVM Counter'), findsOneWidget);

    // Verify the initial message
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);
  });
}
