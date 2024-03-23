import 'package:coffee_shop_mobile_app/screens/single_product_view_page.dart';
import 'package:coffee_shop_mobile_app/utils/app_colors.dart';
import 'package:coffee_shop_mobile_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductItemsModel {
  ProductItemsModel({
    required this.title,
    required this.desc,
    required this.price,
    required this.ratings,
    required this.src,
  });

  final String title;
  final String desc;
  final String price;
  final String ratings;
  final String src;
}

class ProductListItems extends StatelessWidget {
  const ProductListItems({super.key});

  static List<ProductItemsModel> listOfItems = [
    ProductItemsModel(
        title: 'Cappuccino',
        desc: 'with Chocolate',
        price: '4.53',
        ratings: '4.8',
        src: AppIcons.product1Image),
    ProductItemsModel(
        title: 'Cappuccino',
        desc: 'with Oat Milk',
        price: '3.90',
        ratings: '4.9',
        src: AppIcons.product2Image),
    ProductItemsModel(
        title: 'Cappuccino',
        desc: 'with Chocolate',
        price: '4.23',
        ratings: '3.8',
        src: AppIcons.product3Image),
    ProductItemsModel(
        title: 'Cappuccino',
        desc: 'with Oat Milk',
        price: '5.70',
        ratings: '5.0',
        src: AppIcons.product4Image),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.35),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shrinkWrap: true,
        children: List.generate(
          listOfItems.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Get.to(const SingleProductViewPage());
              },
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 132,
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(listOfItems[index].src),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.orange,
                          ),
                          Text(
                            listOfItems[index].ratings,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        listOfItems[index].title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        listOfItems[index].desc,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ ${listOfItems[index].price}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
