part of 'pages.dart';

class AkunSayaPage extends StatelessWidget {
  const AkunSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                      'Akun Saya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            children: const <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'FullName :',
                    suffixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Alamat :')),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Alamat :')),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Alamat :')),
            ],
          ),
        )
      ],
    );
  }
}
