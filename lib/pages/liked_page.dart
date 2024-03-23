import 'package:flutter/material.dart';

class LikedPage extends StatefulWidget {
  const LikedPage({super.key});

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.blueGrey.shade50,
          title: const Text(
            "Istaklarim",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
          centerTitle: true),
      body: Text("data"),
    );
  }
}
