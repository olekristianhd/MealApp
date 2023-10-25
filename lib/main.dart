import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/screens/tabs.dart';

// Define the custom theme for the application.
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(), // Custom text theme using Google Fonts.
);

// Entry point of the application.
void main() {
  // Wrapping the application with ProviderScope to provide the necessary dependencies.
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

// The main application widget.
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initializing the MaterialApp widget with the custom theme and home as TabsScreen.
    return MaterialApp(
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
