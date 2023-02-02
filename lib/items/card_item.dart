import 'package:amazon/models/product_model.dart';
import 'package:flutter/material.dart';

Widget cartItem({
  required BuildContext context,
  required ProductModel product,
  required void Function() delete,
}) {
  return Stack(
    children: [
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
              product.image,
            ),
          )),
    ),
      Positioned(
        top: 25,
        right: 10,
        child: InkWell(
          onTap: delete,
          child: Icon(
            Icons.delete,
            color: Colors.black,
            size: 40,
          ),
        ),
      ),
      Positioned(
          bottom: 25,
          right: 20,
          child: Text('${product.cost}\$'),
      ),
    ],
  );

}
