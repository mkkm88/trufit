import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trufit/UI/components/my_button.dart';

class OnBoard4 extends StatelessWidget {
  OnBoard4({Key? key}) : super(key: key);
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
                image: AssetImage('assets/images/start.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('STARTED JOURNEY \n WITH TRUFIT',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24),),
            SizedBox(height: 130),
            Align(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 34,
                                    backgroundColor: Color(0xffD9D9D9),
                                    child: Text('Img', style: TextStyle(color: Colors.black),),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Daily Workout Class',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),),
                                      SizedBox(height: 8,),
                                      Text('Each workout is taught by world’s \n best trainers.',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 14),),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 34,
                                    backgroundColor: Color(0xffD9D9D9),
                                    child: Text('Img',
                                      style: TextStyle(color: Colors.black),),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Manage your daily diet routine',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),),
                                      SizedBox(height: 8,),
                                      Text(
                                        'Each diet plan provided by world’s \n best dietitians.',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 14),),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 34,
                                    backgroundColor: Color(0xffD9D9D9),
                                    child: Text('Img',
                                      style: TextStyle(color: Colors.black),),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Keep recording activity',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),),
                                      SizedBox(height: 8,),
                                      Text(
                                        'Keep records of your previous \n best activity.',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 14),),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          MyButton(onTap: (){
                            Navigator.pushNamed(context, '/sign_in');
                          }, text: 'GET STARTED '),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}