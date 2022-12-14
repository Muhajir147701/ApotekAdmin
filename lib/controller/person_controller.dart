part of 'controller.dart';

class PersonController extends GetxController {
  late TextEditingController nama;
  late TextEditingController nomorHp;
  RxBool auth = false.obs;

  @override
  void onInit() async {
    super.onInit();
    nama = TextEditingController();
    nomorHp = TextEditingController();
    await GetStorage.init();

    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read('dataUser') as Map<String, dynamic>;
      nama.text = data['nama'];
      nomorHp.text = data['nomorHp'];
    }
  }

  @override
  void onClose() async {
    nama.dispose();
    nomorHp.dispose();
    super.onClose();
  }
}
