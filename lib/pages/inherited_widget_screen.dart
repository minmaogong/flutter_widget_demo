import 'package:flutter/material.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({super.key});

  static const routeName = '/InheritedWidgetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget Screen'),
      ),
      body: const _RootWidget(
        shareData: 'This is the data shared by InheritedWidget',
        child: _ChildWidget(),
      ),
    );
  }
}

class _RootWidget extends InheritedWidget {
  final String shareData;

  const _RootWidget({super.key, required this.shareData, required super.child});

  @override
  bool updateShouldNotify(_RootWidget oldWidget) {
    return shareData != oldWidget.shareData;
  }

  static _RootWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_RootWidget>()!;
  }

}

class _ChildWidget extends StatelessWidget {
  const _ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final rootWidget = _RootWidget.of(context);
    return Center(child: Text(rootWidget.shareData),);
  }
}