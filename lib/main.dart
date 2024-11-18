import 'package:flutter/material.dart';
import 'package:flutter_creditcard_interest_cal/pages/cal_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/home_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/search_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* routes: {
        "/": (context) => const HomePage(),
        "/cal": (context) => const CalPage(),
        "/search": (context) => const SearchPage(),
        "/setting": (context) => const SettingPage(),
      }, */
      initialRoute: "/",
      onGenerateRoute: (settings) {
        MaterialPageRoute? pageRoute;
        final routeName = settings.name;

        switch (routeName) {
          case "/":
            pageRoute =
                MaterialPageRoute(builder: (context) => const HomePage());
            break;
          case "/cal":
            pageRoute =
                MaterialPageRoute(builder: (context) => const CalPage());
            break;
          case "/search":
            pageRoute =
                MaterialPageRoute(builder: (context) => const SearchPage());
            break;
          case "/settings":
            pageRoute =
                MaterialPageRoute(builder: (context) => const SettingPage());
            break;
          default:
            pageRoute =
                MaterialPageRoute(builder: (context) => const HomePage());
        }
        return pageRoute;
      },

      title: 'Credit card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
