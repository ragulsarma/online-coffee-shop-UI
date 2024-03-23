import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OrderSwitchButtonWidget extends StatelessWidget {
  const OrderSwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      decoration: const BoxDecoration(
        color: Color(0XFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: AppColors.primaryColor,
              ),
              child: const Text(
                'Deliver',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Pick Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
