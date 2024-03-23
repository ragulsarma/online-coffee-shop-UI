import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              child: SvgPicture.asset(
                AppIcons.searchIcon,
                // width: 10, height: 10,
                fit: BoxFit.cover,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            suffixIcon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: SvgPicture.asset(
                  AppIcons.settingsIcon,
                  fit: BoxFit.cover,
                )),
            filled: true,
            hintText: 'Search coffee',
            hintStyle: const TextStyle(fontSize: 14, color: Color(0XFF989898)),
            fillColor: const Color(0XFF313131)),
      ),
    );
  }
}
