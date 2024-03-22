import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Icon(CupertinoIcons.search, color: Colors.white,),
            suffixIcon: Container(
              padding: EdgeInsets.all(5),
              // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Icon(Icons.settings, color: Colors.white,),
            ),
            filled: true,
            hintText: 'Search coffee',
            hintStyle: TextStyle(fontSize: 14, color: Color(0XFF989898)),
            fillColor: Color(0XFF313131)),
      ),
    );
  }
}
