import 'package:flutter/services.dart';
import 'dart:convert';

class DataTopic1 {
  getData() async {
    final String response =
        await rootBundle.loadString('assets/json/course.json');
    final data = jsonDecode(response);
    return data["b1"]["Present simple or present continuous"]["topic 1"];
  }
}