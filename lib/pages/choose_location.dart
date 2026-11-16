import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text("Choose Location"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight(24),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Text("Choose Location Screen"),
    );
  }
}

