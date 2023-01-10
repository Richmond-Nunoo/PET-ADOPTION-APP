import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/landing_page_read.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          height: 50,
          width: double.infinity,
          child: const Center(
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 370,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/dog111.jpg",
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(370),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  Positioned(
                      top: -25,
                      child: Container(
                        height: 70,
                        width: 65,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundColor: Colors.purple,
                              child: Image.asset(
                                "assets/paw1.png",
                                height: 40,
                                color: Colors.white,
                              ),
                              // backgroundImage: AssetImage("assets/paw.png"),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:const [
                 SizedBox(
                  height: 20,
                ),
                LandingPageReadme()
              ],
            ),
          )
        ],
      ),
    );
  }
}
