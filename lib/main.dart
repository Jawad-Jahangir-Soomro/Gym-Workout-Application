import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_workout_app/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 96, 59, 181),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

final darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme: theme,
      themeMode: ThemeMode.system,
      home: const TabsScreen(),
    );
  }
}