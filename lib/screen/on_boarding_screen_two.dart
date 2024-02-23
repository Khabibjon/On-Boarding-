import 'package:flutter/material.dart';
import 'package:untitled6/assets/assets.dart';
import 'package:untitled6/screen/on_boarding_screen_three.dart';

class OnBoardingScreenTwo extends StatefulWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  State<OnBoardingScreenTwo> createState() => _OnBoardingScreenTwoState();
}

class _OnBoardingScreenTwoState extends State<OnBoardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECDDFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SizedBox(
                height: 121,
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Roommate Finder",
                      style: TextStyle(
                        color: Color(0xff191D21),
                        fontWeight: FontWeight.w800,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "Hey you, looking for a roommate? We've helped ",
                      style: TextStyle(
                        color: Color(0xff656F77),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "millions across the nation find their perfect",
                      style: TextStyle(
                        color: Color(0xff656F77),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "match... and you're next!",
                      style: TextStyle(
                          color: Color(0xff656F77),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 345,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(Assets.picture3),
            ),
            const SizedBox(
              height: 32,
            ),
            Image.asset(Assets.picture2),
            const SizedBox(
              height: 60,
            ),
            IconButton(
              icon: Container(
                height: 64,
                width: 375,
                color: const Color(0xff161616),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnBoardingScreenThree(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
