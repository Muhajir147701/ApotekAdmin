part of 'pages.dart';

class GetObx extends StatelessWidget {
  GetObx({super.key});

  final obat = Get.put(ObatController());

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    List<Obat> dummyData = List.generate(
        100,
        (index) => Obat(
            obatName: faker.food.toString(),
            obatPicture: "https://picsum.photos/id/${870 + index}/200",
            harga: 10000 + Random().nextInt(100000),
            deskripsi: faker.lorem.sentence()));

    return Scaffold(
        appBar: AppBar(
          title: const Text('List Produck'),
          actions: [
            Obx((() => Text("$i"))),
            GestureDetector(
                onTap: () {
                  Get.toNamed('home');
                },
                child: const Icon(Icons.shop_two_rounded))
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: ((context, index) => GestureDetector(
                  onTap: () =>
                      Get.toNamed('/detail', arguments: dummyData[index]),
                  child: GridTile(
                      footer: Container(
                        width: 100,
                        height: 80,
                        color: Colors.green.withOpacity(0.5),
                        child: Column(
                          children: [
                            Text(
                              dummyData[index].obatName!,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text('Rp ${dummyData[index].harga},-'),
                            Text(
                              dummyData[index].deskripsi!,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      child: Image.network(dummyData[index].obatPicture!)),
                ))));
  }
}
