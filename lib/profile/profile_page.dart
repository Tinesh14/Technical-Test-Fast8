import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'update_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double iconSize = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.white,
            padding: const EdgeInsets.all(12.0),
            child: const Row(
              children: [
                CircleAvatar(
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
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tinesh Roy",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Masuk dengan google",
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateProfilePage(),
                      ),
                    );
                  },
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/informasi-pribadi.svg',
                        semanticsLabel: 'Informasi Pribadi',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff7D838B), BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Informasi Pribadi'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/syarat-dan-ketentuan.svg',
                        semanticsLabel: 'Syarat & Ketentuan',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff7D838B), BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Syarat & Ketentuan'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/bantuan.svg',
                        semanticsLabel: 'Bantuan',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff7D838B), BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Bantuan'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/kebijakan-privasi.svg',
                        semanticsLabel: 'Kebijakan Privasi',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff7D838B), BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Kebijakan Privasi'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/log-out.svg',
                        semanticsLabel: 'Log Out',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Color(0xff7D838B), BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Log Out'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    tileColor: Colors.white,
                    leading: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffE5EAED),
                      ),
                      child: SvgPicture.asset(
                        'assets/profile/hapus-akun.svg',
                        semanticsLabel: 'Hapus Akun',
                        height: iconSize,
                        colorFilter: const ColorFilter.mode(
                            Colors.black26, BlendMode.srcIn),
                      ),
                    ),
                    title: const Text('Hapus Akun'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
