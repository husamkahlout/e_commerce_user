import 'package:e_commerce_user/models/category.dart';
import 'package:e_commerce_user/providers/firestore_provider.dart';
import 'package:e_commerce_user/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  Category category;
  CategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
       return Column(
               children: [
//=========================Category Card ========================//
                 Container(
                     // padding: EdgeInsets.only(bottom: 20),
                     margin: EdgeInsets.only(bottom: 20),
                     height: 200,
                     width: double.infinity,
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
                         height: 140,
                         width: double.infinity,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                                 image: NetworkImage(category.imageUrl),
                                 fit: BoxFit.cover)),
                       ),
          //=============== Details ======================//
                       Padding(
                         padding: const EdgeInsets.all(15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
            //=============================== Name  ==================================//  
            //                       
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 SizedBox(width: 40,),
                               Text(
                               category.name,
                               style: const TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 20),
                             ),
                             Spacer(),
                                 //========== Add Icon  ===========// 
                                        Container(
                                         height: 30,
                                         width: 30,
                                         decoration: BoxDecoration(
                                             color: kPrimaryColor,
                                             borderRadius:
                                                 BorderRadius.circular(10)),
                                         child: const Icon(
                                           Icons.forward_rounded,
                                           color: Colors.white,
                                           size: 20,
                                         )),
                                         SizedBox(width: 9,),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
       );
  }
}