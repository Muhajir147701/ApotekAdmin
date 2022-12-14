part of 'pages.dart';

class KeranjangBelanjaPage extends StatelessWidget {
  const KeranjangBelanjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt total = 0.obs;

    for (var i = 0; i < barang.length; i++) {
      total + barang[i].harga!;
    }
    return Column(
      children: [
        const SafeArea(
            child: SizedBox(
          height: 20,
        )),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Keranjang Belanja',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: barang.length,
              itemBuilder: ((context, index) => ListTile(
                    isThreeLine: true,
                    title: Text(
                      barang[index].obatName!,
                      maxLines: 1,
                    ),
                    subtitle: Text(barang[index].deskripsi!),
                    trailing: Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add_box,
                            size: 10,
                          ),
                          onPressed: (() {}),
                        ),
                        // const Text("1"),
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: const Icon(
                        //       Icons.cancel_outlined,
                        //       size: 10,
                        //     ))
                      ],
                    ),
                  ))),
        ),
        Container(
          color: Colors.blue[300],
          width: 250,
          height: 75,
          child: Center(
              child: Obx(
            () => Text("Total : Rp.$total,-"),
          )),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: (() {
              _launchUrl(barang, total);
            }),
            child: const Text('Pesan')),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  Future<void> _launchUrl(List<Obat> barang, total) async {
    List<String> order = [];
    for (int i = 0; i < barang.length; i++) {
      order.add(barang[i].obatName.toString());
    }
    var box = GetStorage();
    String nama = box.read('name');
    String nomorhp = box.read('whatsup_number');

    String url =
        'https://wa.me/+6285342462314?text=$nama\n\n,$nomorhp\n\n ${order.map((e) => "$e\n\n")}\n *Total Harga =Rp.$total*,';
    if (!await launchUrlString(url,
        mode: LaunchMode.externalNonBrowserApplication,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: false,
        ))) {
      throw 'Could not launch $url';
    }
  }
}
