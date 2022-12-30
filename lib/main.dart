import 'package:flutter/material.dart';
import 'package:themes/pages/theme_showcase/theme_showcase.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ThemeShowCase(),
      },
    ),
  );
}
