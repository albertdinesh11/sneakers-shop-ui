import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          for (int i = 3; i < 10; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: size.width * 0.40,
                height: size.height * 0.34,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.40,
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              repeat: ImageRepeat.noRepeat,
                              image: AssetImage('lib/images/products/$i.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: lightCardColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.only(right: 20, top: 20),
                            child: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$180.00',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.star_rounded),
                            Text(
                              '4.4',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 1),
                    const Flexible(
                      child: Text(
                        'Product Name',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF959597)),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ProductCardSearch extends StatelessWidget {
  const ProductCardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.count(
      childAspectRatio: 0.64,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        for (int i = 2; i < 11; i++)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: size.width * 0.40,
              height: size.height * 0.34,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.40,
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            repeat: ImageRepeat.noRepeat,
                            image: AssetImage('lib/images/products/$i.png')),
                        borderRadius: BorderRadius.circular(10),
                        color: lightCardColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(width: 10),
                        Padding(
                          padding: EdgeInsets.only(right: 20, top: 20),
                          child: Icon(Icons.favorite),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$180.00',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star_rounded),
                          Text(
                            '4.4',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 1),
                  const Flexible(
                    child: Text(
                      'Product Name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF959597)),
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
