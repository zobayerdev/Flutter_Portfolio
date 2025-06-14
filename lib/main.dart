// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/profile_screen/presentation/mobile_ui.dart';
import 'package:my_portfolio/features/profile_screen/presentation/tablet_ui.dart';
import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
import 'package:my_portfolio/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zobayer Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DataUploadPage(),
    );
  }
}

class DataUploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      mobile: ProfileMobileScreen(),
      tablet: ProfileTabletScreen(),
      desktop: ProfileWebScreen(),
      
    );
  }
}
