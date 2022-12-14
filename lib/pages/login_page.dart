part of 'pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    var box = GetStorage();
    var person = Get.put(PersonController());
    return Scaffold(
      appBar: AppBar(title: const Text('LoginPage')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: person.nama,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'FullName :',
                  suffixIcon: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: person.nomorHp,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor Whats App :',
                  suffixIcon: Icon(Icons.phone_android_outlined)),
            ),
            ElevatedButton(
                onPressed: () {
                  // if (box.read('name') == null) {
                  //   box.write('name', person.nama.text);
                  //   box.write('whatsup_number', person.nomorHp.text);
                  // }
                  box.write('name', person.nama.text);
                  box.write('whatsup_number', person.nomorHp.text);

                  Get.toNamed('/', arguments: 0);
                },
                child: const Text('Home')),
          ],
        ),
      )),
    );
  }
}
