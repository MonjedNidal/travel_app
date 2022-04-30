import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/screens/category_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var accent = Colors.amber;
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // English, no country code
      ],
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
         // primaryColor: primary,
          primarySwatch: Colors.blue,

          accentColor: accent,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5: GoogleFonts.elMessiri(
                  textStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              )),
              headline6: GoogleFonts.tajawal(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w400,
              )))),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryTripsScreen.screenRoute: (ctx) => CategoryTripsScreen()
      },
    );
  }
}
