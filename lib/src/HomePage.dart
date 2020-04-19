import 'package:flutter/material.dart';
import 'package:simple_note/src/pages/NotePage.dart';

import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(right: 0),
          child: Icon(Icons.check_circle)
        ),
        titleSpacing: 0,
        title: Text(
          "SIMPLE NOTE",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 0,
          ),
        ),
        backgroundColor: Colors.orange[400],
        elevation: 2,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => new NotePage(null, true) ));
        },
      ),

    );
  }
}