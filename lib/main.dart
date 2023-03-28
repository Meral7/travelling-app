// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/category_trips_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../screens/trip_detail_screen.dart';
import '../screens/tabs_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
         Locale('ar', 'AE'), // English, no country code
      ],
      
      title: 'Travel App',
      // ignore: duplicate_ignore
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // ignore: deprecated_member_use
          accentColor: Colors.amber,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
              )),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen (),
        CategoryTripScreen.screenRoute: (ctx) => 
        CategoryTripScreen(),
        TripDetailScreen.screenRoute: (ctx) => TripDetailScreen(),
      },
    );
  }
}
