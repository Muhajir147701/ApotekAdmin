part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Obat obat = Get.arguments;
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: <Widget>[
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
                    child: Center(child: Text('data'))),
              ],
            )),
            //card
          ],
        ),
        Container(
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF382A74),
          ),
          child: Column(
            children: [
              Text(
                obat.obatName!,

                ///disini penerima
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(15),
                    child: Image.network(obat.obatPicture!),
                  ),
                  Column(
                    children: [
                      Text("harga ${obat.harga}"),
                      SizedBox(width: 200, child: Text("${obat.deskripsi}"))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              // fungsi.belanja.add(obat);
              barang.add(obat);
              i++;
              Get.back();
            },
            child: const Text('Pesan'),
          ),
        ),
      ],
    ));
  }
}
