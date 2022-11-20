part of 'pages.dart';

class GetObx extends StatelessWidget {
  GetObx({super.key});
  final obat = Get.put(ObatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          (() => Text(
                obat.anka.toString(),
                style: const TextStyle(fontSize: 20),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (() {
        obat.increment();
      })),
    );
  }
}
