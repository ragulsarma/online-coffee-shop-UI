import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(
                  color: AppColors.greyColor, fontSize: 12),
            ),
            Row(
              children: [
                Text(
                  'Madurai, TamilNadu',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        Image.asset(
          AppIcons.dpImage,
          width: 44,
          height: 44,
        )
      ],
    );
  }
}
