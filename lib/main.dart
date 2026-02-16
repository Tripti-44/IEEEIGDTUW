import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/loader_screen.dart';

void main() {
  runApp(const IEEEIGDTUWApp());
}

class IEEEIGDTUWApp extends StatelessWidget {
  const IEEEIGDTUWApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEEE IGDTUW',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7042F8),
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const LoaderScreen(),
    );
  }
}
