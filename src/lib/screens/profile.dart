import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 25),
        children: [
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: const Icon(Icons.credit_card_rounded, color: Colors.black),
            title: const Text('Payment'),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: const Icon(Icons.discount_outlined, color: Colors.black),
            title: const Text('Promo codes'),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: const Icon(Icons.person_outlined, color: Colors.black),
            title: const Text('Profile'),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: const Icon(Icons.settings_outlined, color: Colors.black),
            title: const Text('Settings'),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: const Icon(Icons.info_outline, color: Colors.black),
            title: const Text('About'),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {},
            leading: Stack(
              children: const [
                Positioned(
                  top: 4.5,
                  left: 5,
                  child: Icon(Icons.question_mark, color: Colors.black, size: 14),
                ),
                Icon(Icons.circle_outlined, color: Colors.black),
              ],
            ),
            title: const Text('Help'),
          ),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 93,
        titleSpacing: 25,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mikk Vahaste',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              '+37256996608',
              style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
