import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/merchants.dart';
import 'package:food_delivery_app/widgets/merchant_card_large.dart';

class MyVerticalMerchants extends StatelessWidget {
  const MyVerticalMerchants({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 24,
                children: merchants.map((merchant) => MyMerchantCardLarge(merchant: merchant)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
