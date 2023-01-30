import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: TextButton.icon(
        onPressed: onTap,
        icon: const Icon(
          Icons.location_on_outlined,
          size: 26,
        ),
        label: Wrap(
          children: const [
            Text(
              'Kaagvere 9',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
