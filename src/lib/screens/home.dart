import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar.dart';
import 'package:food_delivery_app/widgets/horizontal_merchants.dart';
import 'package:food_delivery_app/widgets/vertical_merchants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MyAppBar(
            onTap: () {},
          ),
        ],
        body: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
