import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';
import '../icon_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return        Flexible(
                  child: Container(
                    width: size.width * 0.65,
                    height: size.height * 0.055,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightCardColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 25,
                              height: 25,
                              child: IconsWidget(
                                  iconPath: 'lib/images/search.png',
                                  iconColor: lightIconsColor.withOpacity(0.8))),
                          const SizedBox(width: 15),
                          Text('Search here',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5))),
                        ],
                      ),
                    ),
                  ),
                );
  }
}