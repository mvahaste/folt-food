import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/widgets/app_bar.dart';
import 'package:food_delivery_app/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.indigo,
          background: Colors.white,
          surface: Colors.white,
          primary: Colors.black,
          secondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.indigo,
          background: Colors.black,
          surface: Colors.black,
          primary: Colors.white,
          secondary: Colors.white,
        ),
        useMaterial3: true,
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final List<Widget> _screens = const [
    Center(child: Text('Home')),
    Center(child: Text('Groceries')),
    Center(child: Text('Search')),
    Center(child: Text('Orders')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          index: _index),
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: MyAppBar(onTap: () {}),
      ),
      body: _screens[_index],
    );
  }
}
