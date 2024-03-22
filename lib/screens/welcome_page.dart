import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: SizedBox(
            width: double.infinity,
            // padding: EdgeInsets.symmetric(horizontal: 30),
            /*decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/welcome_page_bg.png'),
                      fit: BoxFit.cover)),*/
            child: Image.asset(
              'assets/images/welcome_page_bg.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            )),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              // height: 200,
              decoration: const BoxDecoration(
                // color: Colors.black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      // offset: Offset(0.9, 1.0),
                      blurRadius: 10,
                      spreadRadius: 10)
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                    // Colors.transparent,
                    // Colors.black,
                  ],
                  begin: FractionalOffset(1.0, 1.0),
                  end: FractionalOffset(1.0, 0.0),
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  // tileMode: TileMode.repeated
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const Text(
                  'Coffee so good, your taste buds will love it.',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  style:
                      TextStyle(fontSize: 14, color: AppColors.textGreyColor),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: AppColors.primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 21.0),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ])))
    ]));
  }
}
