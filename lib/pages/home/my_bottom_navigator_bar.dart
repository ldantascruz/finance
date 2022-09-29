import 'package:flutter/material.dart';
import 'package:use_material_3/design_system/my_color.dart';

class MyBottomNavigatorBar extends StatefulWidget {
  const MyBottomNavigatorBar({super.key});

  @override
  State<MyBottomNavigatorBar> createState() => _MyBottomNavigatorBarState();
}

class _MyBottomNavigatorBarState extends State<MyBottomNavigatorBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        enableFeedback: true,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        backgroundColor: MyColor.blue3,
        type: BottomNavigationBarType.fixed,
        fixedColor: MyColor.blue3,
        items: [
          BottomNavigationBarItem(
            tooltip: 'Home',
            label: 'Home',
            icon: Image.asset(
              'assets/components/home.png',
              color: MyColor.greyUnselect,
            ),
            activeIcon: Image.asset(
              'assets/components/home.png',
              color: MyColor.green2,
              scale: 0.8,
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Carteira',
            label: 'Carteira',
            icon: Image.asset(
              'assets/components/wallet.png',
              color: MyColor.greyUnselect,
            ),
            activeIcon: Image.asset(
              'assets/components/wallet.png',
              color: MyColor.green2,
              scale: 0.8,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Ofertas',
            tooltip: 'Ofertas',
            icon: Image.asset(
              'assets/components/offer.png',
              color: MyColor.greyUnselect,
            ),
            activeIcon: Image.asset(
              'assets/components/offer.png',
              color: MyColor.green2,
              scale: 0.8,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Calendário',
            tooltip: 'Calendário',
            icon: Image.asset(
              'assets/components/calendar2.png',
              color: MyColor.greyUnselect,
            ),
            activeIcon: Image.asset(
              'assets/components/calendar2.png',
              color: MyColor.green2,
              scale: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
