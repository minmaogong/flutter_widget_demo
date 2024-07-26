import 'package:flutter/material.dart';

class GridViewWidgetScreen extends StatelessWidget {
  const GridViewWidgetScreen({super.key});

  static const routeName = '/GridViewWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GridView Widget Screen'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(20, (index) {
          return Center(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blueAccent,
              ),
              child: Text("Container $index",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
            ),
          );
        }),
      ),
    );
  }
}
