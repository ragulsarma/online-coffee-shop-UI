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
      backgroundColor: Colors.black,
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/welcome_page_bg.png'),
                fit: BoxFit.cover)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Coffee so good, your taste buds will love it.',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'The best grain, the finest roast, the powerful flavor.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
