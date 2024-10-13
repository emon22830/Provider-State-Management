import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('MyApp'),
      ),
      body: Center(
        child: Text(countProvider.count.toString(),style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
countProvider.setCount();
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
