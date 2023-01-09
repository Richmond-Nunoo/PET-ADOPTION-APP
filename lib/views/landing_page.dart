import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Get Started ",
            ),
          )),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 480,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/dog1.png"),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(400),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
