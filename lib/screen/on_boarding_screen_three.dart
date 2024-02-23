import 'package:flutter/material.dart';
import 'package:untitled6/assets/assets.dart';
import 'package:untitled6/screen/on_boarding_screen.dart';
import 'package:untitled6/widget/card_widget.dart';

class OnBoardingScreenThree extends StatefulWidget {
  const OnBoardingScreenThree({super.key});

  @override
  State<OnBoardingScreenThree> createState() => _OnBoardingScreenThreeState();
}

class _OnBoardingScreenThreeState extends State<OnBoardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE3D2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 343,
                height: 113,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find Your Match!',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 32,
                        color: Color(0xff191D21),
                      ),
                    ),
                    Text(
                      "We've helped millions across the nation find their perfect match... and you're next!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff656F77),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(Assets.picture2),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 388,
                width: 352,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 22,
                  ),
                  child: Image.asset(Assets.picture4),
                ),
              ),
              const SizedBox(
                height: 32,
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
                              builder: (context) => const OnBoardingScreen(),
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
