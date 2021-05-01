import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Focused Menu'),
      ),
      body: FocusedMenuHolder(
        blurSize: 2,
        blurBackgroundColor: Colors.white,
        menuWidth: MediaQuery.of(context).size.width * 0.50,
        animateMenuItems: false,
        duration: Duration(milliseconds: 100),
        menuBoxDecoration: BoxDecoration(
          color: Colors.red,
        ),
        menuItemExtent: 70,
        onPressed: () {},
        menuItems: [
          FocusedMenuItem(
            title: Text('Edit'),
            onPressed: () {},
            trailingIcon: Icon(Icons.edit),
          ),
          FocusedMenuItem(
            title: Text('Favorite'),
            onPressed: () {},
            trailingIcon: Icon(Icons.favorite),
          ),
          FocusedMenuItem(
            title: Text('Share'),
            onPressed: () {},
            trailingIcon: Icon(Icons.share),
          ),
          FocusedMenuItem(
            title: Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
            trailingIcon: Icon(Icons.delete, color: Colors.white),
            backgroundColor: Colors.pink,
          ),
        ],
        child: Card(
          child: Image.asset(
            'images/mt.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
