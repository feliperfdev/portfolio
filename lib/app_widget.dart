import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Felipe.R Dev',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontFamily: 'GasoekOne', fontSize: 40),
          displayMedium: TextStyle(fontFamily: 'Gantari', fontSize: 30),
        ),
      ),
      home: const HomePage(),
    );
  }
}
