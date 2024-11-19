import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
                children: [
                  Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
        ));
  }
}
