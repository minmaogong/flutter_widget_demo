import 'package:flutter/material.dart';

class PaddingWidgetScreen extends StatelessWidget {
  const PaddingWidgetScreen({super.key});

  static const routeName = '/PaddingWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Padding Widget Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}