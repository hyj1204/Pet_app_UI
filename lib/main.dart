import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
import 'screens/side_navigator_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
        iconTheme: IconThemeData(color: Colors.grey[400], size: 25),
        buttonColor: Colors.black45,
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SideNavigatorScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
