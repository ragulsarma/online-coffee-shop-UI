import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/banner_widget.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/category_list_items.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/location_widget.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/product_list_items.dart';
import 'package:coffee_shop_mobile_app/widgets/home_page_widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
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
                          SearchWidget()
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 64)
                  ],
                ),
                const BannerWidget()
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const CategoryListItems(),
            const SizedBox(
              height: 24,
            ),
            const ProductListItems(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
