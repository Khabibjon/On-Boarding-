import 'package:flutter/material.dart';
import 'package:untitled6/assets/assets.dart';
import 'package:untitled6/screen/on_boarding_screen_two.dart';
import 'package:untitled6/widget/card_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 386,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(Assets.picture1),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Find a Roomie!",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Color(0xff191D21),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "We've helped millions across the nation find",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff656F77),
                ),
              ),
              const Text(
                "their perfect match... and you're next!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff656F77),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Image.asset(Assets.picture2),
              const SizedBox(
                height: 13,
              ),
              SizedBox(
                height: 105,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CardWidget(
                        title: "Skip",
                        isBlack: true,
                        isWhite: false,
                      ),
                      IconButton(
                        icon: const CardWidget(
                          title: "Next",
                          isBlack: false,
                          isWhite: true,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnBoardingScreenTwo(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
