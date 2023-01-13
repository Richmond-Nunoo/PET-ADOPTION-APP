import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/bottom_tabs.dart';
import 'package:pet_adoption_app_ui/views/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  final showHome = pref.getBool("showHome") ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool? showHome;
  const MyApp({super.key, this.showHome});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showHome! ? const BottomTab() : const LandingPage(),
    );
  }
}
