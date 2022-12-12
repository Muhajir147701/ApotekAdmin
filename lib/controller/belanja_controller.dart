part of 'controller.dart';

class BelanjaController extends GetxController {
  List<Obat> belanja = [];

  void addBelanja(Obat obat) {
    belanja.add(obat);
  }
}
