part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: Center(
                      child: Text(
                        'Detail Page',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )),
            //card
          ],
        ),
        Container(
          height: 185,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF382A74),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.only(bottom: 20),
            color: Colors.amber,
          ),
        )
      ],
    ));
  }
}
