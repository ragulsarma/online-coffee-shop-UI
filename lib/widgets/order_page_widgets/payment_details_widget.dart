import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetailsWidget extends StatelessWidget {
  const PaymentDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 19),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: const BorderRadius.all(Radius.circular(14))),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.discountIcon),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  '1 Discount is applied',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Payment Summary',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '\$ 4.53',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              Text(
                'Delivery fee',
                style: TextStyle(color: Colors.black),
              ),
              Spacer(),
              Text(
                '\$ 3.0',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '\$ 2.0',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Payment',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '\$ 6.53',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
