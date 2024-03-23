import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 13),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
              image: AssetImage(AppIcons.bannerImage), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              margin: const EdgeInsets.only(bottom: 15),
              decoration: const BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Text(
                'Promo',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )),
          const Text(
            'Buy one get',
            style: TextStyle(
                fontSize: 23,
                backgroundColor: Colors.black,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'one Free',
            style: TextStyle(
                fontSize: 23,
                backgroundColor: Colors.black,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
