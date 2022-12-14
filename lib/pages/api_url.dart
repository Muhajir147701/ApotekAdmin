part of 'pages.dart';

class ApiUrl extends StatelessWidget {
  const ApiUrl({super.key});

  @override
  Widget build(BuildContext context) {
    var obatAll = Get.put(ObatController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Url'),
        actions: [
          Obx((() => Text("$i"))),
          GestureDetector(
              onTap: () {
                Get.toNamed('/home', arguments: 2);
              },
              child: Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.shopping_basket,
                    color: Colors.amber,
                  )))
        ],
      ),
      body: FutureBuilder<List<Obat>>(
        future: obatAll.getAllObat(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: snapshot.data!.length,
                itemBuilder: ((context, index) {
                  Obat obat = snapshot.data![index];
                  return ListTile(
                    onTap: () {
                      Get.toNamed('/detail', arguments: obat);
                    },
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(obat.obatPicture.toString()),
                    ),
                    title: Text(
                      obat.obatName.toString(),
                      maxLines: 1,
                    ),
                    subtitle: Text(obat.deskripsi.toString()),
                    trailing: Text("Rp. ${obat.harga}"),
                  );
                }));
          } else {
            return const Center(
              child: Text('Gagal'),
            );
          }
        },
      ),
    );
  }
}
