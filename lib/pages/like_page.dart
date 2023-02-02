import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../items/like_item.dart';

class LikePage extends StatefulWidget {
  LikePage({/*required this.list,*/Key? key}) : super(key: key);
  // List<ProductModel> list;

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Favorites'),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: likedList.isEmpty?
        Center(child: Text('You have no favorite item'),)
            :ListView.builder(
            itemCount: likedList.length,
            itemBuilder: (context,index){
              return likeItem(context:context, produnct: likedList[index]!);
            }),
      ),
    );
  }
}
