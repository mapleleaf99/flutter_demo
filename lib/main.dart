import 'package:flutter/material.dart';
import 'package:flutter_demo/views/game/game.dart';
import 'package:flutter_demo/views/home/home.dart';
import 'package:flutter_demo/views/mine/mine.dart';
import 'package:flutter_demo/views/quotes/quotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "APP",
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false,
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      home: const Scaffold(
        body: ContentPage(),
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "行情",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "游戏"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "我的"
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Home(),
          Quotes(),
          Game(),
          Mine(),
        ],
      ),
    );
  }
}


