import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/widgets/app_bar.dart';
import 'package:food_delivery_app/widgets/bottom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData _buildTheme(brightness) {
      var baseTheme = ThemeData(brightness: brightness);

      return baseTheme.copyWith(
        textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      );
    }

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
      ).copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(
            // Theme.of(context).textTheme.apply(fontSizeFactor: 1, fontSizeDelta: 0),
            ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
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
        textTheme: GoogleFonts.poppinsTextTheme(
            // Theme.of(context).textTheme.apply(fontSizeFactor: 1, fontSizeDelta: 0),
            ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
      themeMode: ThemeMode.light,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const Center(child: Text('Groceries')),
    const Center(child: Text('Search')),
    const Center(child: Text('Orders')),
    const Center(child: Text('Profile')),
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
        index: _index,
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MyAppBar(
            onTap: () {},
          ),
        ],
        body: _screens[_index],
      ),
    );
  }
}
