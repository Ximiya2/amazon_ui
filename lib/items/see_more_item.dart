import 'package:amazon/attributes.dart';
import 'package:amazon/models/product_model.dart';
import 'package:amazon/pages/card_page.dart';
import 'package:amazon/pages/seeMore_page.dart';
import 'package:flutter/material.dart';

Widget SeeMoreItem({
  required BuildContext context,
  required ProductModel product,
  required void Function() onPrassLike,
}) {
  return Stack(
    fit: StackFit.expand,
    children: [
    Container(
  height: 150,
  decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          product.image,
        ),
        fit: BoxFit.cover,
      )
  ),
    ),
      Positioned(
          right: 10,
          top: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: (){
                  cartList.add(product);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text("Siz bu mahsulotni savatga qo\`shdiz",),
                    duration: const Duration(seconds: 1),
                  ),
                  );
                },
                icon: Icon(Icons.add),
            ),
          ),
      ),
      Positioned(
          right: 10,
          top: 50,
          child: IconButton(
            onPressed: onPrassLike,
              // onPressed: (){
              //   // likedList.add(product);
              //   //
              //   // ScaffoldMessenger.of(context).showSnackBar(
              //   //     const SnackBar(
              //   //   backgroundColor: Colors.green,
              //   //     content: Text("Siz bu mahsulotga like bostingiz",),
              //   //     duration: const Duration(seconds: 1),
              //   // ),
              //   // );
              // },
              icon: Icon(
                product.isLiked ? Icons.favorite : Icons.favorite_border,
                color: product.isLiked ? Colors.red : Colors.white,
                size: 40,
              ),
          ),
      ),
      Positioned(
          left: 10,
          bottom: 10,
          child: Text(
             '${product.cost}\$',
          ),
      ),
    ],
  );
}

