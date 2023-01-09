import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _controller = PageController();
  int activeIndex = 0;
  final activeColor = Colors.orange;
  final inActiveColor = Colors.grey;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 170,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        activeIndex = value;
                      });
                    },
                    controller: _controller,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 0),
                        child: Column(
                          children: [
                            Text(
                              "Ready to make a new friend?",
                              textAlign: TextAlign.center,
                              style: theme.titleLarge,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "We have the cutest pets available, all waiting to make you their friend",
                              textAlign: TextAlign.center,
                              style: theme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Text("Second Page"),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Third Page"),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: activeIndex == 0 ? activeColor : inActiveColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 5,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: activeIndex == 1 ? activeColor : inActiveColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 5,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: activeIndex == 2 ? activeColor : inActiveColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
