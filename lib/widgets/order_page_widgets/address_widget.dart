import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  int itemCount = 1;

  increaseValue() {
    setState(() {
      itemCount++;
    });
  }

  decreaseValue() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ragul sarma',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            addressEditWidget(
              'Edit Address',
              Icons.edit_note_rounded,
            ),
            const SizedBox(
              width: 8,
            ),
            addressEditWidget(
              'Add Note',
              Icons.event_note,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Divider(),
        ),
        itemQuantityPlaceWidget,
      ],
    );
  }

  Widget addressEditWidget(String name, IconData iconName) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Row(
          children: [
            Icon(
              iconName,
              size: 18,
              color: Colors.black.withOpacity(0.6),
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      );

  Widget get itemQuantityPlaceWidget => Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image.asset(
              AppIcons.product1Image,
              fit: BoxFit.cover,
              width: 54,
              height: 54,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Column(
            children: [
              Text(
                'Cappuccino',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'with Chocolate',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    decreaseValue();
                  },
                  icon: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 14),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Text('-'),
                  )),
              Text(itemCount.toString()),
              IconButton(
                  onPressed: () {
                    increaseValue();
                  },
                  icon: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 14),
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Text(
                      '+',
                    ),
                  )),
            ],
          ),
        ],
      );
}
