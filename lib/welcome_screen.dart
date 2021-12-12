import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  PageController swiperController = PageController();
  late AnimationController controller;
  int index = 0;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 550,
            child: PageView(
              onPageChanged: (page) {
                setState(() {
                  index = page;
                });
              },
              controller: swiperController,
              children: <Widget>[
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/on_boarding_image_1.svg',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/on_boarding_image_2.svg',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/on_boarding_image_3.svg',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/on_boarding_image_4.svg',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
