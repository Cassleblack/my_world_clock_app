import 'package:flutter/material.dart';
import 'package:my_world_clock_app/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpTime() async {
    WorldTime instance = WorldTime(location: "Berlin", flag: "Germany.png", url: "Tokyo");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
    });
  }


  @override
  void initState() {
    super.initState();
    setUpTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(50.0),
        child: Text("loading"),
      ),
    );
  }
}
