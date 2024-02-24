import 'package:flutter/material.dart';
import '../CustomWidgets/custom_scaffold.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      title: 'Shopping Cart',
      body: Column(
        children: [
          ListView.builder(itemBuilder: itemBuilder),
          SizedBox(
            child: ,
          ),
        ],
      ),

    );
  }
}
