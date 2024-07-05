import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
      ),
      body: const MineContent(),
    );
  }
}
class MineContent extends StatefulWidget {
  const MineContent({super.key});

  @override
  State<MineContent> createState() => _MineContentState();
}

class _MineContentState extends State<MineContent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


