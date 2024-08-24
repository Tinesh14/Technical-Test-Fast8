import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payuung_pribadi/profile/profile_page.dart';

import '../widget/responsive_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      const Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                      child: Text(
                        "Produk Keuangan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      height: 200,
                      child: ResponsiveGridView(
                        items: [
                          GridItem(icon: Icons.home, label: 'Urun'),
                          GridItem(
                              icon: Icons.search,
                              label: 'Pembiayaan Porsi Haji'),
                          GridItem(
                              icon: Icons.notifications,
                              label: 'Financial Check Up'),
                          GridItem(
                              icon: Icons.message, label: 'Asuransi Mobil'),
                          GridItem(
                              icon: Icons.person, label: 'Asuransi Properti'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                      child: Text(
                        "Kategori Pilihan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      height: 200,
                      child: ResponsiveGridView(
                        items: [
                          GridItem(icon: Icons.home, label: 'Hobi'),
                          GridItem(icon: Icons.search, label: 'Merchandise'),
                          GridItem(
                              icon: Icons.notifications,
                              label: 'Gaya Hidup Sehat'),
                          GridItem(
                              icon: Icons.message, label: 'Konseling & Rohani'),
                          GridItem(
                              icon: Icons.person, label: 'Self Development'),
                          GridItem(
                              icon: Icons.notifications,
                              label: 'Perencanaan Keuangan'),
                          GridItem(
                              icon: Icons.message, label: 'Konsultasi Medis'),
                          GridItem(icon: Icons.person, label: 'Lihat Semua'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
