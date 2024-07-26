import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  static const routeName = '/AnimatedListWidget';

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _data = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedList'),
      ),
      body: Column(
        children: [
          Expanded(
              child: AnimatedList(
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_data[index], animation);
            },
          )),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text('Add item'),
                  onPressed: () {
                    _insertItem(_data.length, 'Item ${_data.length + 1}');
                  },
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  child: const Text('Remove item'),
                  onPressed: () {
                    _removeItem(_data.isNotEmpty ? _data.length - 1 : 0);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem(String item, Animation<double> animation) {
    // return SizeTransition(
    //   axis: Axis.vertical,
    //     sizeFactor: animation, child: ListTile(title: Text(item)));
    // 透明度渐变动画
    // return FadeTransition(opacity: animation, child: ListTile(title: Text(item)));
    // return ScaleTransition(scale: animation, child: ListTile(title: Text(item)));
    return RotationTransition(turns: animation, alignment: Alignment.topLeft, child: ListTile(title: Text(item)));
  }

  void _insertItem(int index, String item) {
    _data.insert(index, item);
    _listKey.currentState!.insertItem(index);
  }

  void _removeItem(int index) {
    String removeItem = _data.removeAt(index);
    _listKey.currentState!.removeItem(
        index, (context, animation) => _buildItem(removeItem, animation));
  }
}
