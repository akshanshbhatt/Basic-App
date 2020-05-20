import 'package:flutter/material.dart';

List<Color> light = [
            Colors.lightGreenAccent,
            Colors.redAccent,
            Colors.blueAccent,
          ];

List<Color> dark = [
            Colors.black54,
            Colors.black38,
            Colors.black26,
            Colors.grey[300],
          ];

Widget getCustomAppBar({text : String, isDark: bool}){
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: isDark ? dark : light,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        Text('$text', style: TextStyle(fontFamily: 'ADAM' ,fontSize: 18, fontWeight: FontWeight.w800),),
        IconButton(icon: Icon(Icons.close), onPressed: (){}),
      ],),
    ),
  );
}