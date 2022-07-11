import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/data_model.dart';

class DataServices {
  String baseUrl =
      "https://raw.githubusercontent.com/ThakurSahab0/travel_json/main/places.json";
  Future<List<DataModel>> getInfo() async {
    http.Response res = await http.get(Uri.parse(baseUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        return list.map((e) => DataModel.fromJason(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
