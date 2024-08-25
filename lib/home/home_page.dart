
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/profile/profile_page.dart';

import '../widget/responsive_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double iconSize = 35;
  int activePageIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//     // First get the FlutterView.
//     FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// // Dimensions in logical pixels (dp)
//     Size size = view.physicalSize / view.devicePixelRatio;
//     double width = size.width;
//     double height = size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF6C20A),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Pagi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Tinesh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        'assets/home/notification.svg',
                        semanticsLabel: 'Notification',
                        height: 40,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff8393A6),
                          child: Text(
                            'T',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: _menuBar(context)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 15),
                        child: Text(
                          "Produk Keuangan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 5),
                        height: 200,
                        child: ResponsiveGridView(
                          items: [
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/urun.svg',
                                  semanticsLabel: 'Urun',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.brown, BlendMode.srcIn),
                                ),
                                label: 'Urun'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/pembiayaan-porsi-haji.svg',
                                  semanticsLabel: 'Pembiayaan Porsi Haji',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.green, BlendMode.srcIn),
                                ),
                                label: 'Pembiayaan Porsi Haji'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/financial-check-up.svg',
                                  semanticsLabel: 'Financial Check Up',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Color(0xffF6C20A), BlendMode.srcIn),
                                ),
                                label: 'Financial Check Up'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/asuransi-mobil.svg',
                                  semanticsLabel: 'Asuransi Mobil',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.blueGrey, BlendMode.srcIn),
                                ),
                                label: 'Asuransi Mobil'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/asuransi-properti.svg',
                                  semanticsLabel: 'Asuransi Properti',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.red, BlendMode.srcIn),
                                ),
                                label: 'Asuransi Properti'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 15),
                        child: Text(
                          "Kategori Pilihan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 5),
                        height: 300,
                        child: ResponsiveGridView(
                          items: [
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/hobi.svg',
                                  semanticsLabel: 'Hobi',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.blue, BlendMode.srcIn),
                                ),
                                label: 'Hobi'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/merchandise.svg',
                                  semanticsLabel: 'Merchandise',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.blue, BlendMode.srcIn),
                                ),
                                label: 'Merchandise'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/gaya-hidup-sehat.svg',
                                  semanticsLabel: 'Gaya Hidup Sehat',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.red, BlendMode.srcIn),
                                ),
                                label: 'Gaya Hidup Sehat'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/konseling-rohani.svg',
                                  semanticsLabel: 'Konseling & Rohani',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.blue, BlendMode.srcIn),
                                ),
                                label: 'Konseling & Rohani'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/self-development.svg',
                                  semanticsLabel: 'Self Development',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.purple, BlendMode.srcIn),
                                ),
                                label: 'Self Development'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/perencanaan-keuangan.svg',
                                  semanticsLabel: 'Perencanaan Keuangan',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.green, BlendMode.srcIn),
                                ),
                                label: 'Perencanaan Keuangan'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/konsultasi-medis.svg',
                                  semanticsLabel: 'Konsultasi Medis',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.green, BlendMode.srcIn),
                                ),
                                label: 'Konsultasi Medis'),
                            GridItem(
                                icon: SvgPicture.asset(
                                  'assets/home/lihat-semua.svg',
                                  semanticsLabel: 'Lihat Semua',
                                  height: iconSize,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.grey, BlendMode.srcIn),
                                ),
                                label: 'Lihat Semua'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _menuBar(BuildContext context) {
    const double borderRadius = 25.0;
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
      child: Container(
        width: 400.0,
        height: 40.0,
        decoration: const BoxDecoration(
          color: Color(0XFFF6F8F7),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: InkWell(
                borderRadius:
                    const BorderRadius.all(Radius.circular(borderRadius)),
                onTap: () {
                  setState(() {
                    activePageIndex = 0;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: (activePageIndex == 0)
                      ? const BoxDecoration(
                          color: Color(0xffF6C20A),
                          borderRadius:
                              BorderRadius.all(Radius.circular(borderRadius)),
                        )
                      : null,
                  child: Text(
                    "Payuung Pribadi",
                    style: (activePageIndex == 0)
                        ? const TextStyle(color: Colors.white)
                        : const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                borderRadius:
                    const BorderRadius.all(Radius.circular(borderRadius)),
                onTap: () {
                  setState(() {
                    activePageIndex = 1;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: (activePageIndex == 1)
                      ? const BoxDecoration(
                          color: Color(0xffF6C20A),
                          borderRadius:
                              BorderRadius.all(Radius.circular(borderRadius)),
                        )
                      : null,
                  child: Text(
                    "Payuung Karyawan",
                    style: (activePageIndex == 1)
                        ? const TextStyle(color: Colors.white)
                        : const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
