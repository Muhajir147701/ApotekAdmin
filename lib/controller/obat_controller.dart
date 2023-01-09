part of 'controller.dart';

class ObatController extends GetxController {
  RxInt angka = 6.obs;

  increment() {
    angka++;
  }

  Future<List<Obat>> getAllObat() async {
    Uri url = Uri.parse('http://apotek.asadiyahpi2.sch.id/public/api/obat');
    var res = await http.get(url);
    List? data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Obat.fromJson(e)).toList();
    }
    // return data;
  }

  Future<Obat> editObat(
      String id, obatName, obatPicture, harga, deskripsi) async {
    Uri url = Uri.parse(
        'https://apotek.asadiyahpi2.sch.id/public/api/obat/update/$id');
    var res = await http.post(url, body: {
      'obat_name': obatName,
      'obat_picture': obatPicture,
      'harga': harga,
      'deskripsi': deskripsi,
    });
    var data = jsonDecode(res.body);

    return data.map((e) => Obat.fromJson(e));
    //   obatName: data['obat_name'],
    //   obatPicture: data['obat_picture'],
    //   harga: data['harga'],
    //   deskripsi: data['deskripsi'],
    // );

    // List? data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

    // if (data == null || data.isEmpty) {
    //   return [];
    // } else {
    //   return data.map((e) => Obat.fromJson(e)).toList();
    // }
    // return ;
  }

  Future<Obat> addObat(String obatName, obatPicture, harga, deskripsi) async {
    Uri url =
        Uri.parse('https://apotek.asadiyahpi2.sch.id/public/api/obat/store');
    var res = await http.post(url, body: {
      'obat_name': obatName,
      'obat_picture': obatPicture,
      'harga': harga,
      'deskripsi': deskripsi,
    });
    var data = jsonDecode(res.body);

    return data.map((e) => Obat.fromJson(e));
    //   obatName: data['obat_name'],
    //   obatPicture: data['obat_picture'],
    //   harga: data['harga'],
    //   deskripsi: data['deskripsi'],
    // );
  }

  List<String> bulan = [
    "Januari",
    "Feburary",
    "maret",
    "April",
    "Mey",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ].obs;
}
