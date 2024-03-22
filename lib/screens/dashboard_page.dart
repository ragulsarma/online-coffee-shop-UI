import 'package:coffee_shop_mobile_app/screens/card_page.dart';
import 'package:coffee_shop_mobile_app/screens/fav_page.dart';
import 'package:coffee_shop_mobile_app/screens/home_page.dart';
import 'package:coffee_shop_mobile_app/screens/notification_page.dart';
import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int checkIndex = 0;

  List<Widget> listOfPages = [
    const HomePage(),
    const FavPage(),
    const CardPage(),
    const NotificationPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[checkIndex],
      extendBody: true,
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                checkIndex = index;
              });
            },
            currentIndex: checkIndex,
            backgroundColor: Colors.white,
            elevation: 3,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppIcons.homeIcon,
                        color: checkIndex == 0
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),
                      if (checkIndex == 0)
                        iconBottomContainer
                      else
                        Container(
                          height: 10,
                        ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppIcons.favIcon,
                        color: checkIndex == 1
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),
                      if (checkIndex == 1)
                        iconBottomContainer
                      else
                        Container(
                          height: 12,
                        ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppIcons.cardIcon,
                        color: checkIndex == 2
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),
                      if (checkIndex == 2)
                        iconBottomContainer
                      else
                        Container(
                          height: 12,
                        ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppIcons.notificationIcon,
                        color: checkIndex == 3
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),
                      if (checkIndex == 3)
                        iconBottomContainer
                      else
                        Container(
                          height: 12,
                        ),
                    ],
                  ),
                ),
                label: '',
              )
            ],
          )),
    );
  }

  Widget get iconBottomContainer => Container(
        width: 10,
        height: 5,
        margin: const EdgeInsets.only(top: 7),
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(18), left: Radius.circular(18))),
      );
}
