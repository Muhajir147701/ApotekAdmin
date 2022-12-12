part of 'pages.dart';

class HomeScreen extends StatefulWidget {
  final int bottomNavBarIndex;
  const HomeScreen({this.bottomNavBarIndex = 0, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavbarIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavbarIndex = widget.bottomNavBarIndex;
    pageController = PageController(initialPage: bottomNavbarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xFFD9D9D9),
          ),
          SafeArea(
              child: Container(
            color: const Color(0xFFF6F7F9),
          )),
          PageView(
            controller: pageController,
            onPageChanged: (int index) {
              setState(() {
                bottomNavbarIndex = index;
              });
            },
            children: <Widget>[
              HomePage(),
              const FeedPage(),
              const KeranjangBelanjaPage(),
              const AkunSayaPage()
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Pesanan'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: 'Keranjang'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          ],
          currentIndex: bottomNavbarIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          onTap: ((index) {
            setState(
              () {
                bottomNavbarIndex = index;
                pageController.jumpToPage(index);
              },
            );
          })),
    );
  }
}
