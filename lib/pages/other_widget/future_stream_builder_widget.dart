import 'package:flutter/material.dart';

class FutureStreamBuilderWidget extends StatefulWidget {
  const FutureStreamBuilderWidget({super.key});

  static const routeName = '/FutureStreamBuilderWidget';

  @override
  State<FutureStreamBuilderWidget> createState() =>
      _FutureStreamBuilderWidgetState();
}

class _FutureStreamBuilderWidgetState extends State<FutureStreamBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder和StreamBuilder'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "FutureBuilder",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            _buildFutureBuilder(),
            const SizedBox(height: 20),
            const Text(
              "StreamBuilder",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            _buildStreamBuilder(),
          ],
        ),
      ),
    );
  }

  FutureBuilder<String> _buildFutureBuilder() {
    return FutureBuilder<String>(
        future: _fetchFutureData(), // 异步操作的Future
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // 数据加载中显示的Widget
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}' ,style: const TextStyle(fontSize: 18),);
          } else {
            return Text('Data: ${snapshot.data}', style: const TextStyle(fontSize: 18));
          }
        });
  }

  Future<String> _fetchFutureData() async {
    // 模拟耗时操作
    await Future.delayed(const Duration(seconds: 5));
    return "Hello FutureBuilder!";
  }

  StreamBuilder<int> _buildStreamBuilder() {
    return StreamBuilder<int>(
      stream: _fetchStreamData(), // 异步操作的Stream
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // 数据加载中显示的Widget
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}', style: const TextStyle(fontSize: 18));
        } else if (snapshot.hasData) {
          return Text('Data: ${snapshot.data}', style: const TextStyle(fontSize: 18));
        } else {
          return const Text('Stream completed', style: TextStyle(fontSize: 18));
        }
      },
    );
  }

  Stream<int> _fetchStreamData() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i; // 每秒发出一个数字
    }
  }
}
