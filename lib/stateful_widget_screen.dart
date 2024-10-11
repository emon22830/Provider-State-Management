import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidgetScreen> createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {

  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Stateful Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
Container(
  child: Center(child: Text(x.toString(),style: TextStyle(
    fontSize: 50,
  ),),),
)
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
x++;
print(x++);
setState(() {

});
          },
      child: Icon(Icons.add),
      ),
    );
  }
}
