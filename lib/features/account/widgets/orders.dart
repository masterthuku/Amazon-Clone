import 'package:amazone/constants/global_variables.dart';
import 'package:amazone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list

  List list = [
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA', 
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA', 
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA', 
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA', 
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA', 
    'https://unsplash.com/photos/a-person-holding-a-silver-device-in-their-hand-B1YFG79u1cA'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
