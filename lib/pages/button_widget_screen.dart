import 'package:flutter/material.dart';

class ButtonWidgetScreen extends StatelessWidget {
  const ButtonWidgetScreen({super.key});

  static const routeName = '/ButtonWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Button Widget Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Elevated Button'),
                    ),
                  );
                },
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Text Button'),
                    ),
                  );
                },
                child: const Text('Text Button'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Outlined Button'),
                    ),
                  );
                },
                child: const Text('Outlined Button'),
              ),
              const SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Icon Button'),
                    ),
                  );
                },
                icon: const Icon(Icons.star),
              ),
              const SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Floating Action Button'),
                    ),
                  );
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Click Gesture Detector'),
                    ),
                  );
                },
                onDoubleTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Double Tap Gesture Detector'),
                    ),
                  );
                },
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text('Long Press Gesture Detector'),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('Gesture Detector'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}