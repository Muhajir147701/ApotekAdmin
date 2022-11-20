part of 'pages.dart';

class LokasiPage extends StatelessWidget {
  const LokasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        'Lokasi',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )),
          ])
          //akhir
        ],
      ),
    );
  }
}
