import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      body: Column(
        children: [
          TextButton.icon(onPressed: () {
            Navigator.pushNamed(context, "/choose_location");
          },
            icon: Icon(Icons.edit_location),
            label: Text("edit location"),
          ),
        ],
      ),
    );
  }
}
