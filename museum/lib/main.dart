import 'package:flutter/material.dart';

void main() {
  runApp(const MuseumApp());
}

class MuseumApp extends StatelessWidget {
  const MuseumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Museum',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)),
        home: const Artwork());
  }
}

class Artwork extends StatelessWidget {
  const Artwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Museum'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/Mona_Lisa.jpg'),
            const Text('Mona Lisa'),
            const Text(
              'Leonard DeVinci',
              style: TextStyle(fontFamily: 'Merriweather', fontSize: 15),
            )
          ],
        )));
  }
}
