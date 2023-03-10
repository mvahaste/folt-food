import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/merchants.dart';
import 'package:food_delivery_app/widgets/merchant_card_large.dart';

class MyVerticalStores extends StatelessWidget {
  const MyVerticalStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 24,
                children: merchants.where((merchant) => merchant.type == 'store').map((merchant) => MyMerchantCardLarge(merchant: merchant)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
