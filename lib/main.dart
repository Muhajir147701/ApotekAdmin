import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/pages/pages.dart';
import 'package:get_x/pages/widget/widets.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: (() => const LoginPage())),

        //HalamanApotek
        GetPage(name: '/splash', page: (() => const SplashPage())),
        GetPage(name: '/home', page: (() => const HomeScreen())),
        GetPage(name: '/feed', page: (() => const FeedPage())),
        GetPage(name: '/akunsaya', page: (() => const AkunSayaPage())),
        GetPage(name: '/detail', page: (() => const DetailPage())),
        GetPage(name: '/lokasi', page: (() => const LokasiPage())),
        GetPage(name: '/keranjang', page: (() => const KeranjangBelanjaPage())),
        GetPage(name: '/riwayat', page: (() => const RiwayatTransaksi())),
        GetPage(name: '/video', page: (() => const Video())),
        GetPage(name: '/tambah', page: (() => GetObx())),
      ],
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    );
  }
}
