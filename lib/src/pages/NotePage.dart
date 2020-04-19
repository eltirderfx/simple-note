import 'package:flutter/material.dart';
import '../db/DBHelper.dart';
import '../db/Models/MyNote.dart';

class NotePage extends StatefulWidget {
  final MyNote _mynote;
  final bool _isNew;

  NotePage(this._mynote, this._isNew);

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  String title;
  
  @override
  Widget build(BuildContext context) {

    if ( widget._isNew )
    {
      title = "New Note";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 25
          )
        )
      )
    );
  }
}