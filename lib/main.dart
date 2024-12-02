import 'package:flutter/material.dart';

void main() {
  runApp(const AboutPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Flutter'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'Ini merupakan text widget aw',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About"),
        ),
        body: Hero(tag: "assets/images/cat.jpg", 
        child: Image.asset("assets/images/cat.jpg")));
  }
}