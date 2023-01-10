import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPageReadme extends StatefulWidget {
  const LandingPageReadme({super.key});

  @override
  State<LandingPageReadme> createState() => _LandingPageReadmeState();
}

class _LandingPageReadmeState extends State<LandingPageReadme> {
  int activeIndex = 0;
  final activeColor = Colors.orange;
  final inActiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          height: 170,
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                activeIndex = value;
              });
            },
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
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
              const Text("Second Page"),
              const Text("Third Page")
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
            )
          ],
        )
      ],
    );
  }
}
