import 'package:flutter/material.dart';
import 'package:shop/utils/cart_widgets/checkout_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 60),
          child: Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Your Cart',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
            ),
          ),
        ),
        CheckOut()
      ],
    ));
  }
}
