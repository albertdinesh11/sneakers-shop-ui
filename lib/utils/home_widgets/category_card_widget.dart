import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';

class CategoryCard1 extends StatelessWidget {
  const CategoryCard1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 6; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: size.width * 0.40,
                height: size.height * 0.20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightCardColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset('lib/images/products/$i.png')),
                      const Text('Sneakers',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
