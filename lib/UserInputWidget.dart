import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/main.dart';

// Gathering User Data
class UserInputWidget extends StatefulWidget {
  @override
  _UserInputWidgetState createState() => _UserInputWidgetState();
}

class _UserInputWidgetState extends State<UserInputWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _textController,
          decoration: InputDecoration(labelText: 'Enter Text'),
        ),
        ElevatedButton(
          onPressed: () {
            final counterModel = Provider.of<CounterModel>(context, listen: false);
            counterModel.increment();
            counterModel.decrement();
            counterModel.increment();
            _textController.clear();
          },
          child: Text('Update State with User Input'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}