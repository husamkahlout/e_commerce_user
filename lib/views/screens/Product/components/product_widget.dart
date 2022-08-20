import 'package:e_commerce_user/models/product.dart';
import 'package:e_commerce_user/providers/firestore_provider.dart';
import 'package:e_commerce_user/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  String catId;
  ProductWidget({required this.product, required this.catId});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
//=========================Product Card ========================//
        Container(
          // padding: EdgeInsets.only(bottom: 20),
          margin: EdgeInsets.only(bottom: 20),
          width: 300,
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              //  const SizedBox(
              //     height: 10,
              //   ),
              //========== Image ===========//
              Container(
                height: 135,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(product.image), fit: BoxFit.cover)),
              ),
              //=============== Details ======================//
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.description,
                      style: const TextStyle(color: kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //=============================== Price  ==================================//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              r'$ ',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              product.price.toString(),
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // const Spacer(),
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.add_shopping_cart_rounded,
                              color: Colors.white,
                              size: 20,
                            )),

                        //========== Add Icon  ===========//
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
