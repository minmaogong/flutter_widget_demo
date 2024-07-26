import 'package:flutter/material.dart';

import 'other_widget/other_widget.dart';

class OtherWidgetScreen extends StatelessWidget {
  OtherWidgetScreen({super.key});

  static const routeName = '/OtherWidgetScreen';

  final list = ["FutureBuilder和StreamBuilder", "AnimatedList", "Hero"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Widget Screen'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(list[index]),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.pushNamed(context, FutureStreamBuilderWidget.routeName);
                    break;
                  case 1:
                    Navigator.pushNamed(context, AnimatedListWidget.routeName);
                    break;
                  case 2:
                    Navigator.pushNamed(context, HeroWidget.routeName);
                    break;
                  default:
                    break;
                }
              },
            );
          },
        ),
      ),
    );
  }
}