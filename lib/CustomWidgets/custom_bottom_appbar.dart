import 'package:flutter/material.dart';
import 'global.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0
                    ? primaryColor
                    : Theme.of(context).textTheme.bodySmall!.color,
              ),
              onPressed: () {

              }),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                icon: Icon(
                  Icons.category_outlined,
                  color: index == 1
                      ? primaryColor
                      : Theme.of(context).textTheme.bodySmall!.color,
                ),
                onPressed: () {
                  if (index != 1) ;
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                icon: Icon(
                  Icons.add_business_rounded,
                  color: index == 2
                      ? primaryColor
                      : Theme.of(context).textTheme.bodySmall!.color,
                ),
                onPressed: () {}),
          ),
          IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: index == 3
                    ? primaryColor
                    : Theme.of(context).textTheme.bodySmall!.color,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: index == 3
                    ? primaryColor
                    : Theme.of(context).textTheme.bodySmall!.color,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
