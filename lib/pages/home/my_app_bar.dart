import 'package:flutter/material.dart';
import 'package:use_material_3/design_system/my_color.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 30,
      ),
      child: Container(
        color: MyColor.blueAccent,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/foto_perfil.jpeg',
                    height: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 0),
                        child: Text(
                          'Valor Total',
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColor.grey,
                          ),
                        ),
                      ),
                      Text(
                        'R\$ 5.308,00',
                        style: TextStyle(
                          fontSize: 22,
                          color: MyColor.white4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/components/search.png',
                  color: MyColor.white4,
                  scale: 0.95,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/components/notification.png',
                  color: MyColor.white4,
                  scale: 0.95,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
