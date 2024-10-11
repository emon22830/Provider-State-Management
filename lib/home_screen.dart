import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int x = 10;
  @override
  Widget build(BuildContext context) {
    print('build');
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        title: Text('My App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Container(
  child: Center(
    child: Text(x.toString(),style: TextStyle(
      fontSize: 50
    ),),
  ),
)
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
