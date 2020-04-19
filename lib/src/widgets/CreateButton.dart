import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final IconData icon;
  final bool enable;
  final Function onpress;

  CreateButton({this.icon, this.enable, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: enable ? Colors.orange[400] : Colors.red,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,3),
            color: Colors.grey[400],
            spreadRadius: 1,
            blurRadius: 4
          )
        ]
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          if( enable ) {
            onpress();
          }
        },
      ),
    );
  }
}