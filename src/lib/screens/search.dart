import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/categories.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarHeight: 90,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.filter_list_rounded, size: 32),
              onPressed: () {},
            ),
          ),
        ],
        title: Container(
          margin: const EdgeInsets.only(left: 20, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.05),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Restaurants or cuisines',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
              prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.5)),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 24, right: 8, bottom: 24, top: 10),
        children: [
          const Text(
            'Popular categories',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          ...categories.map((category) => ListTile(contentPadding: const EdgeInsets.all(0), minLeadingWidth: 0, onTap: () {}, title: Text('${category.emoji} ${category.title}'))),
        ],
      ),
    );
  }
}
