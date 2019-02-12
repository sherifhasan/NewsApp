import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.fastfood),
          title: Text(
            'menulist${index + 1}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        );
      },
    ));
  }
}
