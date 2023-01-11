import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        title: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, wordSpacing: 5),
            children: [
              WidgetSpan(
                  child: Icon(
                Icons.location_on_sharp,
                color: Colors.red,
                size: 15,
              )),
              TextSpan(
                  text: " Accra, ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "Ghana"),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.jpg"),
              radius: 16,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
