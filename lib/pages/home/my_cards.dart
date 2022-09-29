import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:use_material_3/design_system/my_color.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cartões',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: MyColor.white4,
                ),
              ),
              Image.asset(
                'assets/components/arrow_right.png',
                color: MyColor.white4,
              ),
            ],
          ),
          Card(
            child: Container(
              height: 260,
              width: 230,
              decoration: BoxDecoration(
                  color: MyColor.green2,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/mastercard.png',
                        scale: 0.7,
                      ),
                      Image.asset(
                        'assets/icons/card.png',
                        scale: 0.5,
                        color: MyColor.white3,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'R\$ 2.518,00',
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColor.grey,
                        ),
                      ),
                      Text(
                        'Educação',
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColor.grey,
                        ),
                      ),
                      Text(
                        'Cartão nº:',
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColor.grey,
                        ),
                      ),
                      Text(
                        'XXXX XXXX XXXX 7251',
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColor.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
