import 'package:flutter/material.dart';
import 'package:uzum_market_project/pages/home/home_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          scaffoldBackgroundColor: Colors.blueGrey.shade50),
      home: const HomePage(),
    );
  }
}
