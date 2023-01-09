part of 'pages.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController obatName = TextEditingController();
    TextEditingController obatPicture = TextEditingController();
    TextEditingController obatHarga = TextEditingController();
    TextEditingController obatDeskripsi = TextEditingController();

    obatName.text = '';
    obatPicture.text = '';
    obatHarga.text = '';
    obatDeskripsi.text = '';

    var obatC = Get.put(ObatController());
    return Scaffold(
      body: ListView(
        children: [
          //awal
          Stack(children: <Widget>[
            Container(
              color: Colors.green,
            ),
            SafeArea(
              child: Container(color: const Color(0xFFF6F7F9)),
            ),
            SafeArea(
                child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offNamed('/api');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, left: 15),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Center(
                      child: Text(
                        'AddPage',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )),
          ]),
          //akhir
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            width: 90,
            height: 90,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/image/grouplogo.png'))),
          ),
          const SizedBox(
            height: 40,
          ),

          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all()),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: obatName,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ObatTitle :',
                      suffixIcon: Icon(Icons.person)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: obatPicture,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Obat Picture :')),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: obatHarga,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Harga :')),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: obatDeskripsi,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Deskripsi :')),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var result = await obatC
                    .addObat(obatName.text, obatPicture.text, obatHarga.text,
                        obatDeskripsi.text)
                    .then((value) => Get.snackbar(
                        'Success', "${value.obatName}telah tersimpan"));

                Future.delayed(const Duration(seconds: 2));
                Get.offNamed('/api');

                Get.snackbar("Gagal", result.toString());
              },
              child: const Text('Save'))
        ],
      ),
    );
  }
}
