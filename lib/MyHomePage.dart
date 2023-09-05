import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/UserInputWidget.dart';
import 'package:providerexample/main.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State Management Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Count: ${counterModel.count}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: counterModel.increment,
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counterModel.decrement,
                  child: Text('Decrement'),
                ),
              ],
            ),
            SizedBox(height: 20),
            UserInputWidget(),
          ],
        ),
      ),
    );
  }
}