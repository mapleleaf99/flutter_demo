import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("游戏"),
      ),
      body: const GameContent(),
    );
  }
}

class GameContent extends StatefulWidget {
  const GameContent({super.key});

  @override
  State<GameContent> createState() => _GameContentState();
}

class _GameContentState extends State<GameContent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


