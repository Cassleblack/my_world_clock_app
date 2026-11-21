import 'package:my_world_clock_app/secrets.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String? location;
  String? time;
  String? flag;
  String? url;


  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try {
      Response response = await get(
        Uri.parse("https://api.api-ninjas.com/v1/worldtime?city=$url"),
        headers: {"X-Api-Key": Secrets.apiKey},
      );
      Map data = jsonDecode(response.body);


      String daytime = data["datetime"];
      //String offset = data["utc_offset"].substring(1,3);

      DateTime now = DateTime.parse(daytime);
      //now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    }

    catch (e) {
      print("Caught Error! $e");
    }
  }
}