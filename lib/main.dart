import 'package:flutter/material.dart';
import 'package:widget_demo/pages/basic_widget_screen.dart';
import 'package:widget_demo/pages/button_widget_screen.dart';
import 'package:widget_demo/pages/form_widget_screen.dart';
import 'package:widget_demo/pages/inherited_widget_screen.dart';
import 'package:widget_demo/pages/layout_widget_screen.dart';
import 'package:widget_demo/pages/navigator_widget_screen.dart';
import 'package:widget_demo/pages/other_widget_screen.dart';

import 'pages/layout_wdiget/layout_widget.dart';
import 'pages/other_widget/other_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        BasicWidgetScreen.routeName: (context) => const BasicWidgetScreen(),
        ButtonWidgetScreen.routeName: (context) => const ButtonWidgetScreen(),
        LayoutWidgetScreen.routeName: (context) => LayoutWidgetScreen(),
        PaddingWidgetScreen.routeName: (context) => const PaddingWidgetScreen(),
        AlignWidgetScreen.routeName: (context) => const AlignWidgetScreen(),
        CenterWidgetScreen.routeName: (context) => const CenterWidgetScreen(),
        GridViewWidgetScreen.routeName: (context) => const GridViewWidgetScreen(),
        FormWidgetScreen.routeName: (context) => const FormWidgetScreen(),
        NavigatorWidgetScreen.routeName: (context) => const NavigatorWidgetScreen(),
        InheritedWidgetScreen.routeName: (context) => const InheritedWidgetScreen(),
        OtherWidgetScreen.routeName: (context) => OtherWidgetScreen(),
        FutureStreamBuilderWidget.routeName: (context) => const FutureStreamBuilderWidget(),
        AnimatedListWidget.routeName: (context) => const AnimatedListWidget(),
        HeroWidget.routeName: (context) => const HeroWidget(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final list = ["基础组件", "按钮和可交互组件", "布局组件", "表单组件", "导航组件", "Inherited组件", "其他组件"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(itemCount: list.length,itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]),
          onTap: () {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, BasicWidgetScreen.routeName);
                break;
              case 1:
                Navigator.pushNamed(context, ButtonWidgetScreen.routeName);
                break;
              case 2:
                Navigator.pushNamed(context, LayoutWidgetScreen.routeName);
                break;
              case 3:
                Navigator.pushNamed(context, FormWidgetScreen.routeName);
                break;
              case 4:
                Navigator.pushNamed(context, NavigatorWidgetScreen.routeName);
                break;
              case 5:
                Navigator.pushNamed(context, InheritedWidgetScreen.routeName);
                break;
              default:
                Navigator.pushNamed(context, OtherWidgetScreen.routeName);
                break;
            }
          },
        );
      }),
    );
  }
}
