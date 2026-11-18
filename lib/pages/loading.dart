import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    Response response = await get(
      Uri.parse("https://api.api-ninjas.com/v1/worldtime?city=Berlin"),
      headers: {'X-Api-Key': ''},
    );
    Map data = jsonDecode(response.body);
    print(data["day"]);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Page"),
    );
  }
}
