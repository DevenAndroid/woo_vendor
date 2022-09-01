import 'package:flutter/material.dart';
import 'package:woo_vendor/ui/screens/menu.dart';
import 'package:woo_vendor/ui/screens/offer.dart';
import 'package:woo_vendor/ui/screens/order.dart';
import 'package:woo_vendor/ui/screens/profile.dart';

import '../../resources/theme/theme.dart';
import 'home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const MenuScreen(),
    const OrderScreen(),
    const OfferScreen(),
  ];

  updatePageIndex(index) {
    pageIndex = index;
  }

  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(pageIndex),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * .09,
        decoration: const BoxDecoration(
          color: AppTheme.orangeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  updatePageIndex(0);
                });
              },
              child: pageIndex == 0
                  ? Image.asset(
                      "assets/images/home_dark.png",
                    )
                  : Image.asset(
                      "assets/images/home_lite.png",
                    ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    updatePageIndex(1);
                  });
                },
                child: pageIndex == 1
                    ? Image.asset(
                        "assets/images/menu_dark.png",
                      )
                    : Image.asset(
                        "assets/images/menu_lite.png",
                      )),
            InkWell(
              onTap: () {
                setState(() {
                  updatePageIndex(2);
                });
              },
              child: pageIndex == 2
                  ? Image.asset(
                      "assets/images/history_dark.png",
                    )
                  : Image.asset(
                      "assets/images/history_lite.png",
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  updatePageIndex(3);
                });
              },
              child: pageIndex == 3
                  ? Image.asset(
                      "assets/images/discount_dark.png",
                    )
                  : Image.asset(
                      "assets/images/discount_lite.png",
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
