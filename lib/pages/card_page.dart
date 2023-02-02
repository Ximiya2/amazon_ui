import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../items/card_item.dart';

class CardPage extends StatefulWidget {
  const CardPage({ Key? key}) : super(key: key);


  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.center
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('You cart'),),
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemCount: cartList.length,
            itemBuilder: (context,index){
              return cartItem(
                  context: context,
                  delete: () {
                    cartList.removeAt(index);
                    setState(() {});
                  },
                  product: cartList[index]!);
            }),
      ),
      floatingActionButton: Container(
        height: 40,
        width:MediaQuery.of(context).size.width - 60,
        margin: EdgeInsets.only(left: 100, right: 60),
        child: FloatingActionButton.extended(
          onPressed: (){},
          label: Text('Order ${totalPrice()}\$',),
      ),
      ),
    );
  }
}

int totalPrice(){
  int sum = 0;
  cartList.forEach((element) {
    sum += element.cost;
  });
  return sum;
}
