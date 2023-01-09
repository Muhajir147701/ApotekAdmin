import 'dart:convert';

import 'package:admin_apotek/model/models.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url =
      Uri.parse('https://apotek.asadiyahpi2.sch.id/public/api/obat/update/21');
  var res = await http.post(url, body: {
    'obat_name': 'obat penambah darah',
    'obat_picture':
        'https://drive.google.com/uc?export=view&id=1YzAwlkRXkAsd4pu713NFAApsy5GpJpj9',
    'harga': 12000.toString(),
    'deskripsi':
        'Obat tradisional penambah darah, anda bisa memesannya dalam bentuk kemasan'
  });

  // List data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];
  var data = (jsonDecode(res.body));
  Obat obat = Obat.fromJson(data);
  //   obatName: data['obat_name'],
  //   obatPicture: data['obat_picture'],
  //   harga: data['harga'],
  //   deskripsi: data['deskripsi'],
  // );
  print(obat.obatName.toString());
}
