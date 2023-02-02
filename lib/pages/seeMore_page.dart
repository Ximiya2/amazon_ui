import 'package:amazon/attributes.dart';
import 'package:amazon/models/category_model.dart';
import 'package:amazon/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../items/see_more_item.dart';

class SeeMorePage extends StatefulWidget {
   SeeMorePage(this.item,{Key? key}) : super(key: key);

  CategoryModel item;
  @override
  State<SeeMorePage> createState() => _SeeMorePageState();
}

class _SeeMorePageState extends State<SeeMorePage> {

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item.categoryName
        ),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            itemCount: widget.item.products.length,
            itemBuilder: (context,index){
              return SeeMoreItem(
                  context: context,
                  product: widget.item.products[index]!,
                onPrassLike: () {
                    widget.item.products[index].isLiked =! widget.item.products[index].isLiked;
                    if(widget.item.products[index].isLiked == false){
                      likedList.add(widget.item.products[index]);
                    } else {
                      likedList.remove(widget.item.products[index]);
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                      backgroundColor: Colors.green,
                        content: Text("Siz bu mahsulotga like bostingiz",),
                        duration: const Duration(seconds: 1),
                    ),
                    );
                    setState(() {
                    });
    }
                );
            },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),),
      ),
    );
  }
}
