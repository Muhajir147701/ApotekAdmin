import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:admin_apotek/pages/pages.dart';
import 'package:admin_apotek/pages/widget/widets.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: (() => const ApiUrl()), arguments: 0),

        //HalamanApotek
        GetPage(name: '/login', page: (() => const LoginPage())),
        GetPage(name: '/home', page: (() => const HomeScreen()), arguments: 0),
        GetPage(name: '/feed', page: (() => const FeedPage())),
        GetPage(name: '/akunsaya', page: (() => const AkunSayaPage())),
        GetPage(name: '/detail', page: (() => const DetailPage())),
        GetPage(name: '/lokasi', page: (() => const LokasiPage())),
        GetPage(name: '/keranjang', page: (() => const KeranjangBelanjaPage())),
        GetPage(name: '/riwayat', page: (() => const RiwayatTransaksi())),
        GetPage(name: '/video', page: (() => const Video())),
        GetPage(name: '/tambah', page: (() => GetObx())),
        GetPage(name: '/api', page: (() => const ApiUrl())),
        GetPage(name: '/edit', page: (() => const EditPage())),
        GetPage(name: '/add', page: (() => const AddPage())),
      ],
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    );
  }
}
