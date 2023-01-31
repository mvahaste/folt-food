import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/merchants.dart';
import 'package:food_delivery_app/widgets/merchant_card.dart';
import 'package:food_delivery_app/extensions/list_extensions.dart';

class MyHorizontalMerchants extends StatelessWidget {
  const MyHorizontalMerchants({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 16),
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
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 255, 240),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'All',
                    style: TextStyle(color: Color.fromARGB(255, 32, 147, 89), fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 15,
                children: merchants.shuffleInline().where((merchant) => merchant.type == 'restaurant').take(4).map((merchant) => MyMerchantCard(merchant: merchant)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
