import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/pages/pages.dart';
import 'package:get_x/pages/widget/widets.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = GetStorage();
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: (() => (box.read('name') == null)
                ? const SplashPage()
                : HomeScreen())),

        //HalamanApotek
        GetPage(name: '/login', page: (() => const LoginPage())),
        GetPage(name: '/home', page: (() => HomeScreen())),
        GetPage(name: '/feed', page: (() => const FeedPage())),
        GetPage(name: '/akunsaya', page: (() => const AkunSayaPage())),
        GetPage(name: '/detail', page: (() => const DetailPage())),
        GetPage(name: '/lokasi', page: (() => const LokasiPage())),
        GetPage(name: '/keranjang', page: (() => const KeranjangBelanjaPage())),
        GetPage(name: '/riwayat', page: (() => const RiwayatTransaksi())),
        GetPage(name: '/video', page: (() => const Video())),
        GetPage(name: '/tambah', page: (() => GetObx())),
        GetPage(name: '/api', page: (() => const ApiUrl())),
      ],
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    );
  }
}
