import 'package:flutter/material.dart';

class BogPageDetails extends StatefulWidget {
  const BogPageDetails({super.key});

  @override
  State<BogPageDetails> createState() => _BogPageDetailsState();
}

class _BogPageDetailsState extends State<BogPageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Text("Bog' Page Details"),
    );
  }
}
