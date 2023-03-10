import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 5,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          children: [
            const Image(
              image: ExactAssetImage('assets/images/orders-image.png'),
              width: 135,
              height: 135,
            ),
            const SizedBox(height: 15),
            const Text(
              'No orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              "You don't have any past orders yet.",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        titleSpacing: 25,
        toolbarHeight: 75,
        title: const Text(
          'My orders',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
