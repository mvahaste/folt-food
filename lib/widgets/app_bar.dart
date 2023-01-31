import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      scrolledUnderElevation: 0,
      floating: true,
      elevation: 0,
      title: TextButton.icon(
        onPressed: onTap,
        icon: const Icon(
          Icons.location_on_outlined,
          size: 24,
        ),
        label: Wrap(
          children: const [
            Text(
              'Kaagvere 8',
              style: TextStyle(
                fontSize: 15,
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
