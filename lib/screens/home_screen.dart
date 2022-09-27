import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';
import 'package:shop/screens/search_screen.dart';
import 'package:shop/utils/home_widgets/category_card_widget.dart';
import 'package:shop/utils/home_widgets/search_widget.dart';
import 'package:shop/utils/home_widgets/top_feed_widget.dart';
import 'package:shop/utils/icon_widget.dart';
import 'package:shop/utils/product_card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()));
                      }),
                      child: const SearchWidget()),
                  Row(
                    children: const [
                      IconsWidget(
                          iconPath: 'lib/images/favorite_fill.png',
                          iconColor: Colors.black),
                      SizedBox(width: 15),
                      SizedBox(
                          width: 25,
                          height: 25,
                          child: IconsWidget(
                              iconPath: 'lib/images/bell.png',
                              iconColor: Colors.black)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 15),
              child: SizedBox(
                height: size.height * 0.2,
                width: double.infinity,
                child: PageView(
                  controller: _controller,
                  children: [
                    for (int i = 1; i < 6; i++)
                      Feed(feedImg: 'lib/images/products/$i.png')
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: SwapEffect(
                    activeDotColor: lightIconsColor,
                    dotColor: Colors.black38.withOpacity(0.2),
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffDB9A88)),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: SizedBox(
                width: double.infinity,
                height: size.height * 0.10,
                child: const CategoryCard1(),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffDB9A88)),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: SizedBox(
                  width: double.infinity,
                  height: size.height * 0.34,
                  child: const ProductCard()

                  /*ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                  ],
                ),*/
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
