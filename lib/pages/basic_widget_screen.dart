import 'package:flutter/material.dart';

class BasicWidgetScreen extends StatelessWidget {
  const BasicWidgetScreen({super.key});

  static const routeName = '/BasicWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Basic Widget Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hello World!", style: TextStyle(color: Colors.redAccent, fontSize: 24, fontWeight: FontWeight.w600)),
              const Image(
                width: 200,
                height: 200,
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              const Image(image: AssetImage('assets/images/owl.jpg'), width: 150, height: 150),
              const Icon(Icons.start, color: Colors.redAccent, size: 50),
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blueAccent,
                ),
                child: const Text("Container", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.skip_previous, color: Colors.redAccent, size: 50),
                Icon(Icons.pause, color: Colors.redAccent, size: 50),
                Icon(Icons.skip_next, color: Colors.redAccent, size: 50),
              ],),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.redAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}