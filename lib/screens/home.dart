import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/merchants.dart';
import 'package:food_delivery_app/extensions/list_extensions.dart';
import 'package:food_delivery_app/models/merchant_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '🎁 Bolt Food Deals',
                        style: TextStyle(
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
                      children: merchants.shuffleInline().map((merchant) => MyMerchantCard(merchant: merchant)).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyMerchantCard extends StatelessWidget {
  const MyMerchantCard({super.key, required this.merchant});

  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 215,
      height: 160,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(merchant.imageUrl),
              ),
            ),
            width: 215,
            height: 110,
            child: Stack(
              children: [
                Positioned(
                  child: MyCardPill(text: merchant.discount, color: Colors.red),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: MyCardPill(text: merchant.deliveryTime, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 215,
            height: 50,
            child: Column(
              children: [
                const SizedBox(height: 3),
                Row(
                  children: [
                    const SizedBox(width: 1),
                    Text(merchant.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    const Spacer(),
                    const Icon(
                      Icons.star_rate_rounded,
                      size: 16,
                    ),
                    const SizedBox(width: 2),
                    Text(merchant.rating, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const SizedBox(width: 1),
                    Text(merchant.price, style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5), decoration: TextDecoration.lineThrough)),
                    MyTextPill(text: '${merchant.discountedPrice} €', color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCardPill extends StatelessWidget {
  final String text;
  final Color color;
  final double? scale;

  const MyCardPill({super.key, required this.text, required this.color, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8 * scale!),
      padding: EdgeInsets.symmetric(vertical: 4 * scale!, horizontal: 10 * scale!),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15 * scale!),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12 * scale!),
      ),
    );
  }
}

class MyTextPill extends StatelessWidget {
  final String text;
  final Color color;
  final Color? backgroundColor;
  final double? scale;

  const MyTextPill({super.key, required this.text, required this.color, this.backgroundColor = Colors.red, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6 * scale!),
      padding: EdgeInsets.symmetric(vertical: 2 * scale!, horizontal: 8 * scale!),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15 * scale!),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12 * scale!),
      ),
    );
  }
}
