import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trufit/UI/components/my_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
                height: size.height * 0.7,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 30),),
                      //MyButton(onTap: () {}, text: 'GET STARTED '),
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
