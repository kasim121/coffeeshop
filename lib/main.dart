import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/coffeemodel.dart';
import 'screens/home_landing_tabs.dart';
import 'screens/home_screen_details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      home: const HomeScreenTabs(),

      routes: {
       '/home_screen_detail': (context) {
         CoffeeModel coffee = ModalRoute.of(context)!.settings.arguments as CoffeeModel;
          return HomeScreenDetails(coffee: coffee);
        },
      },
    );
  }
}
