import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryListItems extends StatelessWidget {
  const CategoryListItems({super.key});

  static List<String> listOfItems = [
    'Cappuccino',
    'Machiato',
    'Latte',
    'Americano'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: listOfItems.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: index == 0 ? AppColors.primaryColor : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: Text(
              listOfItems[index],
              style: TextStyle(
                  color: index == 0 ? Colors.white : Colors.black,
                  fontSize: 14,
                  fontWeight: index == 0 ? FontWeight.w600 : FontWeight.w400),
            ),
          );
        },
      ),
    );
  }
}
