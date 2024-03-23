import 'package:flutter/material.dart';

class HomePageDetails extends StatefulWidget {
  const HomePageDetails({super.key});

  @override
  State<HomePageDetails> createState() => _HomePageDetailsState();
}

class _HomePageDetailsState extends State<HomePageDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("HomePageDetails"),
    );
  }
}
