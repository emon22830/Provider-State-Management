import 'package:flutter/material.dart';
import 'dart:async';



class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {

  int x =0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();



    Timer.periodic(Duration(seconds:1), (timer){
      x++;
      print(x);
      setState(() {

      });
    });

  }

  @override

  Widget build(BuildContext context) {
    print('build'+ x.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString() ,
    style: TextStyle(
                fontSize: 50
            ),),
          ),
          Center(
            child: Text(x.toString(),style: TextStyle(
                fontSize: 50
            ),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x++);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
