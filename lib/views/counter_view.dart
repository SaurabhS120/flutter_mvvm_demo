import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterViewModel>(
              builder: (context, model, child) {
                return Text(
                  'You have pushed the button this many times:',
                );
              },
            ),
            Consumer<CounterViewModel>(
              builder: (context, model, child) {
                return Text(
                  '${model.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterViewModel>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
