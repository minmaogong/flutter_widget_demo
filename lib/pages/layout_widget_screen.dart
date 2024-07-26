import 'package:flutter/material.dart';
import 'package:widget_demo/pages/layout_wdiget/center_widget_screen.dart';

import 'layout_wdiget/align_widget_screen.dart';
import 'layout_wdiget/gridview_widget_screen.dart';
import 'layout_wdiget/padding_widget_screen.dart';

class LayoutWidgetScreen extends StatelessWidget {
  LayoutWidgetScreen({super.key});

  static const routeName = '/LayoutWidgetScreen';

  final list = ["Padding", "Align", "Center", "GridView"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Layout Widget Screen'),
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
                    Navigator.pushNamed(context, PaddingWidgetScreen.routeName);
                    break;
                  case 1:
                    Navigator.pushNamed(context, AlignWidgetScreen.routeName);
                    break;
                  case 2:
                    Navigator.pushNamed(context, CenterWidgetScreen.routeName);
                    break;
                  case 3:
                    Navigator.pushNamed(context, GridViewWidgetScreen.routeName);
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