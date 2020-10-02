import 'package:flutfire/CrudApp/crud_sample.dart';
import 'package:flutfire/QuotesApp/quotes.dart';
import 'package:flutfire/WallpaperApp/wall_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutfire/QuotesApp/backdrop.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  static FirebaseAnalytics analytics = new FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      new FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "crud_sample",
      routes: {
       "crud_sample": (context) => CrudSample(),
       "quotes": (context) => QuotesScreen(),
      },
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
