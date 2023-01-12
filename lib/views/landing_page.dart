import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/bottom_tabs.dart';
import 'package:pet_adoption_app_ui/views/widgets/getting_started.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomTab(),
              ),
            );
          },
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
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 370,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/dog1bb.jpg",
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
                                "assets/images/paw1.png",
                                height: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: LandingPageReadme(),
          )
        ],
      ),
    );
  }
}
