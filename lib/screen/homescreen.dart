import 'package:flutter/material.dart';
import 'package:todo/screen/signupscreen.dart';
import 'package:todo/widgets/cardlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: Color.fromARGB(255, 18, 36, 10),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          String title = 'Flutter';
          String desc = 'description is here!!!';
          return CardList(
            title: title,
            desc: desc,
          );
        },
      ),
    );
  }
}
