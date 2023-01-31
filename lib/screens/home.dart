import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/horizontal_merchants';
import 'package:food_delivery_app/widgets/vertical_merchants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            MyHorizontalMerchants(title: '🎁 Bolt Food Deals'),
            MyHorizontalMerchants(title: 'Delivery Promo'),
            MyVerticalMerchants(title: 'All Restaurants and Stores'),
          ],
        ),
      ),
    );
  }
}
