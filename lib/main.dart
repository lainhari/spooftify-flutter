import 'package:flutter/material.dart';
import 'package:spooftify/features/home/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class Album {
  final String cover;
  final String name;

  Album({
    required this.cover,
    required this.name,
  });
}

final recentlyPlayed = [
  Album(cover: 'MGK.png', name: 'Machine Gun Kelly'),
  Album(cover: 'Tycho.png', name: 'Tycho'),
  Album(cover: 'Chon.png', name: 'Chon'),
  Album(cover: 'The Office.png', name: 'The oral History of The Office'),
  Album(cover: 'Bryce Vine.png', name: 'Brice Vine'),
  Album(cover: 'Tycho.png', name: 'Tycho'),
];
