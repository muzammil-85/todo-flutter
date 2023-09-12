import 'package:flutter/material.dart';
import 'package:todo/widgets/editmenu.dart';

class CardList extends StatelessWidget {
  String title;
  String desc;
  CardList({required this.title, required this.desc});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 100,
        child: Card(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          surfaceTintColor: Colors.amberAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      desc,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  EditMenuWidget(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
