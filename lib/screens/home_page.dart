import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/location_widget.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      body: Column(
        children: [
          Container(
            height: 280,
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                LocationWidget(),
                SizedBox(
                  height: 28,
                ),
                SearchWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
