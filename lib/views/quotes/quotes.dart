import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("行情"),
      ),
      body: const QuotesContent(),
    );
  }
}

class QuotesContent extends StatefulWidget {
  const QuotesContent({super.key});

  @override
  State<QuotesContent> createState() => _QuotesContentState();
}

class _QuotesContentState extends State<QuotesContent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


