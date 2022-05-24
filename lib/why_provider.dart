import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// In this page we are using State management using setState(), But whenever we call setstate then buld will rebuild again this may cause memory issue and app get hanging.

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({Key? key}) : super(key: key);

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {

  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {
        
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    print('buld $count time');
    return Scaffold(
      appBar: AppBar(
        title: Text('Why we need provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(DateTime.now().hour.toString()+':'+DateTime.now().minute.toString()+':'+DateTime.now().second.toString(), 
            style: TextStyle(fontSize: 50,),
            ),
          ),
          Center(
            child: Text(count.toString(), 
            style: TextStyle(fontSize: 50,),
            ),
          )
        ],
      ),
    );
  }
}