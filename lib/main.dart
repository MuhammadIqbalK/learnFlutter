import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Pastikan MaterialApp ada di root
        title: 'Aplikasi Flutter',
        home: const MyHomePage(),
        theme: ThemeData());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Flutter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Ini merupakan text widget',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //mengarah ke aboutpage
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()));
                },
                child: const Text('tombol ke arah About')),
          ],
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: "assets/images/cat.jpg",
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 300,
                      height: 200,
                      child: Image.asset(
                        "assets/images/cat.jpg",
                        fit: BoxFit.cover,
                      )),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //mengarah ke aboutpage
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                child: const Text('tombol ke arah Home')),
          ]),
    );
  }
}
