import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/pages/favourites_page.dart';
import 'package:pet_adoption_app_ui/views/pages/homepage.dart';
import 'package:pet_adoption_app_ui/views/pages/inbox_page.dart';
import 'package:pet_adoption_app_ui/views/pages/profile_page.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int selectedPage = 0;
  final List<Widget> _pages = [
    const UserHomePage(),
    const InboxPage(),
    const FavouritesPage(),
    const ProfilePage()
  ];

  void onPagePressed(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedPage,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: onPagePressed,
        currentIndex: selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: selectedPage == 0
                ? const ImageIcon(AssetImage("assets/icons/hut2.png"))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: selectedPage == 1
                ? const ImageIcon(AssetImage("assets/icons/mail2.png"))
                : const ImageIcon(AssetImage("assets/icons/mail.png")),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: selectedPage == 2
                ? const ImageIcon(AssetImage("assets/icons/heart1.png"))
                : const ImageIcon(AssetImage("assets/icons/heart.png")),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: selectedPage == 3
                ? const ImageIcon(AssetImage("assets/icons/user1.png"))
                : const ImageIcon(AssetImage("assets/icons/user.png")),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
