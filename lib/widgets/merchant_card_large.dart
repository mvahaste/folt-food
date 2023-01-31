import 'package:flutter/material.dart';
import 'package:food_delivery_app/extensions/string_extensions.dart';
import 'package:food_delivery_app/models/merchant_model.dart';
import 'package:food_delivery_app/widgets/card_pill.dart';
import 'package:food_delivery_app/widgets/text_pill.dart';

class MyMerchantCardLarge extends StatelessWidget {
  const MyMerchantCardLarge({super.key, required this.merchant});

  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            width: 310,
            height: 310 / 2.1,
            child: Stack(
              children: [
                Positioned(
                  child: MyCardPill(text: merchant.discount, color: Colors.red, scale: 1.1),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: MyCardPill(text: merchant.deliveryTime, color: Colors.black, scale: 1.1),
                ),
                !merchant.available
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.65),
                        ),
                        child: const Center(
                          child: Text(
                            'Delivery available from 11:00',
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          SizedBox(
            width: 310,
            height: 55,
            child: Column(
              children: [
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        merchant.title.tight(),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  children: [
                    const SizedBox(width: 1),
                    Text(merchant.price, style: TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.5), decoration: TextDecoration.lineThrough)),
                    MyTextPill(
                      text: '${merchant.discountedPrice} €',
                      color: Colors.white,
                      scale: 1.1,
                    ),
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
