import 'dart:convert';

import 'package:get_x/model/models.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url =
      Uri.parse('http://192.168.1.8/laravel_api/example-app/public/api/obat');
  var res = await http.get(url);

  List data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

  Obat obatKuat = Obat.fromJson(data[49]);

  // ignore: avoid_print
  print(obatKuat.obatPicture);
}
