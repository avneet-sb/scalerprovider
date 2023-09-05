import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

// Model Class
class CounterModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners when the state changes
  }

  void decrement() {
    _count--;
    notifyListeners(); // Notify listeners when the state changes
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(), // Provide the state object
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}


