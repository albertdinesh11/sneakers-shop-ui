import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: size.height * 0.15,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Price',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('\$265.00',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: lightIconsColor)),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightIconsColor),
                    child: const Center(
                      child: Text('Check Out',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
