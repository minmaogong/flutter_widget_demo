
import 'package:flutter/material.dart';

class AlignWidgetScreen extends StatelessWidget {
  const AlignWidgetScreen({super.key});

  static const routeName = '/AlignWidgetScreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Align Widget Screen'),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
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