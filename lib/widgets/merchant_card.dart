import 'package:flutter/material.dart';
import 'package:food_delivery_app/extensions/string_extensions.dart';
import 'package:food_delivery_app/models/merchant_model.dart';
import 'package:food_delivery_app/widgets/card_pill.dart';
import 'package:food_delivery_app/widgets/text_pill.dart';

class MyMerchantCard extends StatelessWidget {
  const MyMerchantCard({super.key, required this.merchant});

  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      height: 153,
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
            width: 205,
            height: 105,
            child: Stack(
              children: [
                Positioned(
                  child: MyCardPill(text: merchant.discount, color: Colors.red, scale: 0.95),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: MyCardPill(text: merchant.deliveryTime, color: Colors.black, scale: 0.95),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 205,
            height: 48,
            child: Column(
              children: [
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        merchant.title.tight(),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 2,
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          size: 16,
                        ),
                        Text(
                          merchant.rating,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    )
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
