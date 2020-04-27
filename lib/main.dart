
import 'package:flutter/material.dart';
import 'package:notekeeper/pages/home.dart';
import 'package:notekeeper/pages/note_details.dart';
import 'package:notekeeper/pages/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(
  MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      Locale("fa", "AF"),
    ],
    locale: Locale("fa", "AF"),
    title: "لست کارها",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
    initialRoute: "/",
    routes: {
      '/' : (context) => SplashScreen(),
      '/home' : (context) => NoteList(),
    },
  )
);
