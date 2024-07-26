import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  static const routeName = '/HeroWidget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Widget'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const _TargetScreen()));
        },
      ),
    );
  }
}


class _TargetScreen extends StatelessWidget {
  const _TargetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Target Screen'),
      ),
      body: Center(
        child: Hero(
          tag: "uniqueTag", // 与源屏幕中的tag相同
          child: Image.asset(
            "assets/images/owl.jpg",
            width: MediaQuery.of(context).size.width,
          ),// 应该与源屏幕中的widget在视觉上保持一致
        ),
      ),
    );
  }
}
