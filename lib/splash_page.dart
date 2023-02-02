import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({Key? key}) : super(key: key);

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> with SingleTickerProviderStateMixin {
  bool _isVisible = true;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 300),(){
      setState(() {
        _isVisible=false;
      });
    });
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
          opacity: _isVisible?1:0,
        duration: Duration(milliseconds: 1000),
        child: Center(
          child: Image.asset('assets/image/ph20.jpg',
          width: MediaQuery.of(context).size.width*0.6,),
        ),
      ),
    );
  }

  void openPage(){
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        _isVisible = false;
      });
      Navigator.pushNamed(context, '/HomePage');
    });
  }
}