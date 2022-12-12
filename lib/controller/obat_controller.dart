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
