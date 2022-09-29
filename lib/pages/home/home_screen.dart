import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:use_material_3/pages/home/my_app_bar.dart';
import 'package:use_material_3/pages/home/my_bottom_navigator_bar.dart';
import 'package:use_material_3/design_system/my_color.dart';
import 'package:use_material_3/pages/home/my_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _setStatusbarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColor.blueAccent,
          child: Column(
            children: const [
              MyAppBar(),
              MyCards(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigatorBar(),
    );
  }

  _setStatusbarColor() {
    FlutterStatusbarcolor.setStatusBarColor(MyColor.blueAccent);
  }
}
