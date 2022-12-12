part of 'pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF54E351),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 60),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.amber),
                child:
                    // const Image(
                    //   image: AssetImage('assets/image/grouplogo.png'),
                    // ),
                    Lottie.asset("assets/lottie/madicine.json")),
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text('Selamat Datang di\n Apotek Takalala',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 251, 255, 251),
                )
                // Color.fromARGB(255, 235, 209, 209)),
                ),
          ),
          const SizedBox(
            height: 120,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  child: const Text('Go Home'))),
        ],
      ),
    );
  }
}
