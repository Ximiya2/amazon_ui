import 'package:amazon/models/product_model.dart';
import 'package:flutter/material.dart';

Widget likeItem({
  required BuildContext context,
  required ProductModel produnct,
}) {
  return Stack(
    children:[
      Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              produnct.image,
            ),
          )),
    ),
      Positioned(
        top: 20,
        right: 10,
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 40,
        ),
      ),
    ]
  );
}
