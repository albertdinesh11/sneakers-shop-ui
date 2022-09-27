import 'package:flutter/material.dart';
import 'package:shop/utils/product_card_widget.dart';
import 'package:shop/consts/global_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (() {
        FocusScope.of(context).unfocus();
      }),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.06),
                const Center(
                  child: Text('Search',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: size.height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                          width: size.width * 0.80,
                          height: size.height * 0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: lightCardColor,
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: Icon(
                                    Icons.search,
                                    color: lightIconsColor,
                                  ),
                                ),
                                border: InputBorder.none,
                                hintText: "Search here"),
                          )),
                    ),
                    SizedBox(
                        width: 28,
                        height: 28,
                        child: Image.asset(
                          'lib/images/filter.png',
                          color: Colors.black,
                        ))
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Showing',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '"Search Result"',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Text(
                      ' 0  Results',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                ),
                const ProductCardSearch()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
