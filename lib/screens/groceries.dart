import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar.dart';
import 'package:food_delivery_app/widgets/vertical_stores.dart';

class GroceriesPage extends StatelessWidget {
  const GroceriesPage({super.key});

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
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: MyVerticalStores(),
          ),
        ),
      ),
    );
  }
}
