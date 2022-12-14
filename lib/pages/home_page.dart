// ignore_for_file: must_be_immutable

part of 'pages.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Faker faker = Faker();
  final obat = Get.put(ObatController());
  var box = GetStorage();

  @override
  Widget build(BuildContext context) {
    // List<Obat> dummyData = List.generate(
    //     100,
    //     (index) => Obat(
    //         obatName: faker.food.restaurant(),
    //         obatPicture: "https://picsum.photos/id/${870 + index}/200",
    //         harga: 10000 + Random().nextInt(100000),
    //         deskripsi: faker.lorem.sentence()));

    return GetBuilder<ObatController>(
        builder: ((obatController) => ListView(children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        color: const Color(0xFF073A06),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/image/grouplogo.png'),
                              ),
                              Text(
                                box.read('name'),
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              const Icon(
                                Icons.shop_2,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 70, right: 70),
                          child: const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.amber)),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 200, left: 20, right: 20),
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFD9D9D9),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kategory',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/api');
                                    },
                                    child: Kategory('paracetamol', 151)),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/api');
                                    },
                                    child: Kategory('Bodrex', 100))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 220, 240, 214),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Penawaran Menarik',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Text(
                              'Pilih produc yang ada di kolom ini \nuntuk mendapatkan harga yang lebih murah',
                              style: TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: obat.bulan.length,
                                    itemBuilder: ((context, index) => Card(
                                        elevation: 2,
                                        child: Kategory(
                                            obat.bulan[index].toString(),
                                            127)))))
                          ],
                        ),
                      ),
                      Container(
                        height: 300,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tips Kesehatan',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: obat.bulan.length,
                                    itemBuilder: ((context, index) => Kategory(
                                        obat.bulan[index].toString(), 120))))
                          ],
                        ),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.all(2),
                      //   child: Expanded(
                      //     child: GridView.builder(
                      //       padding: const EdgeInsets.all(10),
                      //       gridDelegate:
                      //           const SliverGridDelegateWithFixedCrossAxisCount(
                      //         mainAxisSpacing: 10,
                      //         crossAxisSpacing: 10,
                      //         crossAxisCount: 2,
                      //       ),
                      //       itemBuilder: ((context, index) => GridTile(
                      //           child:
                      //               Image.network(dummyData[index].imageUrl!))),
                      //       itemCount: dummyData.length,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
              // Container(
              //   color: Colors.amber,
              //   child: Column(
              //     children: [
              //       Image.network(dummyData[20].obatPicture!),
              //       Text(dummyData[20].obatName!),
              //     ],
              //   ),
              // ),

              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/splash');
              //     },
              //     child: const Text('Go Splash')),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed("/lokasi");
              //     },
              //     child: const Text('Go Lokasi')),

              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/riwayat');
              //     },
              //     child: const Text('Go Riwayat Transaksi')),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/lokasi');
              //     },
              //     child: const Text('Go Lokasi')),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/video',
              //           arguments:
              //               'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
              //     },
              //     child: const Text('Video')),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/video',
              //           arguments:
              //               'https://drive.google.com/file/d/1odtOKqvTwY1_CWWI_7pAT1R9nc6VsARu/view?usp=sharing');
              //     },
              //     child: const Text('youtube')),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed(
              //         '/tambah',
              //       );
              //     },
              //     child: const Text('tambah')),

              //akhir
            ])));
  }
}

class Kategory extends StatelessWidget {
  String namaObat = '';
  double lebar;

  Kategory(this.namaObat, this.lebar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lebar,
      height: 129,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('assets/image/FotoObat.png'))),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            namaObat,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
