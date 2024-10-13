import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/stateful_widget_screen.dart';
// import 'package:provider/why_provider_screen.dart';
import 'package:provider_state_management/count_example.dart';

import 'count_provider.dart';
import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_)=> CountProvider(),
      child:  MaterialApp(
        // home: StatefulWidgetScreen(),
        home: CountExample(),
    ),

    );

  }
}
