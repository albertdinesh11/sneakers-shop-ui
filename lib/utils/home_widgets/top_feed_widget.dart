// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';

class Feed extends StatelessWidget {
  final feedImg;
  const Feed({Key? key, required this.feedImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: double.infinity,
        height: size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [lightCardColor, lightIconsColor],
                stops: const [0.0, 1.0],
                begin: const FractionalOffset(0.1, 0.2),
                end: const FractionalOffset(1.0, 0.0),
                tileMode: TileMode.clamp)),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 10, width: 10),
                    SizedBox(
                        width: 120, height: 120, child: Image.asset(feedImg)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '50% OFF',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                  Flexible(
                    child: Text(
                      'ON Nike AirForce',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
