import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard2 extends StatelessWidget {
  OnBoard2({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onboard1.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 16.0,
                sigmaY: 16.0,
              ),
              child: Container(
                height: size.height * 0.5,
                width: size.width * 10.0,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'WALK & EARN \n FIT CASH',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                          fontSize: 30),),
                      const SizedBox(height: 25),
                      const Text(
                        'When you have a goal, you have \n to do the work. Workout plans \n designed to help you achieve your \n fitness goals.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),),
                      const SizedBox(height: 80),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Color(0xff585454),
                          dotColor: Color(0xffB2AAAA),
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 10,
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/on_board4');
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/on_board3');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            child: const Text(
                              'Next>>',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
