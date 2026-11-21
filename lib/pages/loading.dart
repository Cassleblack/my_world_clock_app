import 'package:flutter/material.dart';
import 'package:my_world_clock_app/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpTime() {
    WorldTime instance = WorldTime(location: "Berlin", flag: "Germany.png", url: "Berlin");
    instance.getTime();
  }


  @override
  void initState() {
    super.initState();
    setUpTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Page"),
    );
  }
}
