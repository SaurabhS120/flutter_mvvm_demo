import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/counter_view.dart';
import 'viewmodels/counter_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: MaterialApp(
        title: 'Flutter MVVM Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterView(),
      ),
    );
  }
}
