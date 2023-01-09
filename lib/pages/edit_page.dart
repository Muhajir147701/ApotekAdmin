part of 'pages.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController obatName = TextEditingController();
    TextEditingController obatPicture = TextEditingController();
    TextEditingController obatHarga = TextEditingController();
    TextEditingController obatDeskripsi = TextEditingController();
    Obat obat = Get.arguments;
    obatName.text = obat.obatName ?? 'tidak ada'.toString();
    obatPicture.text = obat.obatPicture ?? 'tidak ada'.toString();
    obatHarga.text = (obat.harga == null) ? 'tidak ada' : obat.harga.toString();
    obatDeskripsi.text = obat.deskripsi ?? 'tidak ada'.toString();

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
                    Get.back();
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
                        'EditPage',
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
          Center(
            child: Text(obat.id.toString()),
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
                      labelText: 'FullName :',
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
                await obatC
                    .editObat(obat.id.toString(), obatName.text,
                        obatPicture.text, obatHarga.text, obatDeskripsi.text)
                    .then((value) => Get.snackbar(
                        'Success', "${value.obatName}telah tersimpan"));

                Future.delayed(const Duration(seconds: 1));
                Get.offNamed('/api');
              },
              child: const Text('Save'))
        ],
      ),
    );
  }
}
