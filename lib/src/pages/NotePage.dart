import 'package:flutter/material.dart';
import '../widgets/CreateButton.dart';
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
  bool btnSave;
  bool btnDelete;
  
  @override
  Widget build(BuildContext context) {

    if ( widget._isNew )
    {
      title = "New Note";
      btnSave = true;
      btnDelete = true;
    }

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("NJir"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CreateButton(
                    icon: Icons.delete,
                    enable: false,
                    onpress: () {},
                  ),
                  widget._isNew ? CreateButton(
                    icon: Icons.save,
                    enable: true,
                    onpress: () {},
                  ) : 
                  CreateButton(
                    icon: Icons.edit,
                    enable: true,
                    onpress: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}