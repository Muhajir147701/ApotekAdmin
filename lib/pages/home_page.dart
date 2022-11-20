part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          SafeArea(
            child: Container(color: const Color.fromARGB(255, 19, 212, 80)),
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
                      'Home Page',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          )),
        ],
      ),
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
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/image/grouplogo.png'),
                      ),
                      Text(
                        "Muhammad",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Icon(
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
                  margin: const EdgeInsets.only(top: 20, left: 70, right: 70),
                  child: const TextField(
                      decoration:
                          InputDecoration(border: OutlineInputBorder())),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170, left: 50, right: 50),
            height: 70,
            color: Colors.blueGrey,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/splash');
              },
              child: const Text('Go Splash')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/lokasi");
              },
              child: const Text('Go Lokasi'))
        ],
      ),

      ElevatedButton(
          onPressed: () {
            Get.toNamed('/riwayat');
          },
          child: const Text('Go Riwayat Transaksi')),
      ElevatedButton(
          onPressed: () {
            Get.toNamed('/lokasi');
          },
          child: const Text('Go Lokasi')),
      ElevatedButton(
          onPressed: () {
            Get.toNamed('/video',
                arguments:
                    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
          },
          child: const Text('Video')),
      ElevatedButton(
          onPressed: () {
            Get.toNamed('/video',
                arguments:
                    'https://drive.google.com/file/d/1odtOKqvTwY1_CWWI_7pAT1R9nc6VsARu/view?usp=sharing');
          },
          child: const Text('youtube')),
      ElevatedButton(
          onPressed: () {
            Get.toNamed(
              '/tambah',
            );
          },
          child: const Text('tambah')),

      //akhir
    ]);
  }
}
