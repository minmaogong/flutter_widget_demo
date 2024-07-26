import 'package:flutter/material.dart';

class CenterWidgetScreen extends StatelessWidget {
  const CenterWidgetScreen({super.key});

  static const routeName = '/CenterWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Center Widget Screen'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blueAccent,
          ),
          child: const Text("Container", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600)),
        ),
      )
    );
  }
}