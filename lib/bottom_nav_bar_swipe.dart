import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/cart_page.dart';
import 'package:payuung_pribadi/pages/list_friend_page.dart';
import 'package:payuung_pribadi/pages/list_transaction_page.dart';
import 'package:payuung_pribadi/pages/my_voucher_page.dart';
import 'package:payuung_pribadi/pages/shipping_addres_page.dart';

import 'home/home_page.dart';
import 'pages/search_page.dart';

class BottomNavBarWithScrollableGridMenu extends StatefulWidget {
  const BottomNavBarWithScrollableGridMenu({super.key});

  @override
  State<BottomNavBarWithScrollableGridMenu> createState() =>
      _BottomNavBarWithScrollableGridMenuState();
}

class _BottomNavBarWithScrollableGridMenuState
    extends State<BottomNavBarWithScrollableGridMenu> {
  List<BottomNavigationBarItem> _allMenuItems(bool p0) => [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Beranda'),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.search, color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Cari'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
                color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Keranjang'),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.message, color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Daftar Transaksi'),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.person, color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Voucher Saya'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Alamat Pengiriman'),
        BottomNavigationBarItem(
            icon: Icon(Icons.info, color: p0 ? const Color(0xffF6C20A) : null),
            label: 'Daftar Teman'),
      ];

  final List<Widget> _pages = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ListTransactionPage(),
    MyVoucherPage(),
    ShippingAddressPage(),
    ListFriendPage(),
  ];
  int _currentIndex = 0;
  late final DraggableScrollableController _scrollController;
  bool _isExpanded = false; // Track if the sheet is expanded
  double _previousSize = 0.13;
  @override
  void initState() {
    super.initState();
    _scrollController = DraggableScrollableController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _checkSize() {
    final currentSize = _scrollController.size;
    if (currentSize > _previousSize) {
      if (!_isExpanded) {
        setState(() {
          _isExpanded = true;
        });
      }
    } else if (currentSize < _previousSize) {
      if (_isExpanded) {
        setState(() {
          _isExpanded = false;
        });
      }
    }

    _previousSize = currentSize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: DraggableScrollableSheet(
              initialChildSize: _previousSize,
              minChildSize: 0.13,
              maxChildSize: 0.4,
              controller: _scrollController,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                _scrollController.addListener(_checkSize);
                return Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: LayoutBuilder(builder: (context, constraints) {
                        int columns = (constraints.maxWidth / 150).floor();
                        columns =
                            columns < 3 ? 3 : columns; // Minimum 2 columns
                        return GridView.builder(
                          padding: const EdgeInsets.only(top: 12),
                          controller: scrollController,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: columns,
                            childAspectRatio: 1.5, // Ratio of width to height
                            mainAxisSpacing: 20,
                          ),
                          itemCount: _allMenuItems.call(false).length,
                          itemBuilder: (context, index) {
                            bool isActive = _currentIndex == index;
                            var item = _allMenuItems.call(isActive)[index];
                            return Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  // Handle navigation or other actions here
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    isActive ? item.icon : item.activeIcon,
                                    const SizedBox(height: 8),
                                    Text(
                                      item.label!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: isActive
                                            ? const Color(0xffF6C20A)
                                            : null,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                    Positioned.fill(
                      top: 0,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the up arrow tap
                              _scrollController.animateTo(
                                _isExpanded ? 0.13 : 0.4,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              // }
                            },
                            child: Container(
                              width: 60,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  _isExpanded
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_up,
                                  color: Colors.black54,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
