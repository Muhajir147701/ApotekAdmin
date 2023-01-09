part of 'pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    var box = GetStorage();
    var person = Get.put(PersonController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
        backgroundColor: const Color(0xff6CA972),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: ((value) {
                if (value!.isEmpty) {
                  Get.snackbar("Error", "Nama harus di isi",
                      snackPosition: SnackPosition.BOTTOM);
                }
                return null;
              }),
              controller: person.nama,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'FullName :',
                suffixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  Get.snackbar("Error", "Nama harus di isi",
                      snackPosition: SnackPosition.BOTTOM);
                }
                return null;
              },
              controller: person.nomorHp,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor WhatsApp :',
                  suffixIcon: Icon(Icons.phone_android_outlined)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (person.nama.text.isNotEmpty) {
                    if (person.nomorHp.text.isPhoneNumber) {
                      box.write('name', person.nama.text);
                      box.write('whatsup_number', person.nomorHp.text);
                      Get.toNamed('/', arguments: 0);
                    } else {
                      Get.snackbar("Error",
                          "Nomor Hp harus di isi sesuai format phone number!",
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  } else {
                    Get.snackbar("Error", "Nama harus di isi!",
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: const Text('Save')),
          ],
        ),
      )),
    );
  }
}
