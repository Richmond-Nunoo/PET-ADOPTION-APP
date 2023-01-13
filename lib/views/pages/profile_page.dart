import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
              );
              final pref = await SharedPreferences.getInstance();
              pref.setBool("showHome", false);
            },
            child: const Text("Navigate to Onboarding Screen")),
      ),
    );
  }
}
