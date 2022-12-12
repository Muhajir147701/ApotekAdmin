part of 'models.dart';

class Belanja {
  DateTime waktuini = DateTime.now();
  String transaksi = '';
  String jenisTransaksi = '';
  Obat? obat;

  Belanja(this.waktuini, this.transaksi, this.jenisTransaksi, this.obat);
}
