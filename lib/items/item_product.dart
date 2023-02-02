import 'package:amazon/attributes.dart';
import 'package:amazon/models/category_model.dart';
import 'package:amazon/pages/seeMore_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemProduct(
   BuildContext context,
   CategoryModel item,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Text(
          item.categoryName,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Image.asset(
                  item.products[index].image,
                  // "assets/images/current/sneakers_${index + 1}.jpg",
                  fit: BoxFit.fill,
                );
              })),
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.width * 0.03,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeeMorePage(item)),
            );
          },
          child: Text(
            'See more',
            style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(12, 129, 151, 1),
                fontWeight: FontWeight.w300),
          ),
        ),
      ),
      const Divider(thickness: 5),
    ],
  );
}
