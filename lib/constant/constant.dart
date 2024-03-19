import 'package:flutter/material.dart';


var myDrawer =
  Drawer(
// backgroundColor:Colors.grey[300] ,
    child: Column(
      children: [
        DrawerHeader(
            child: Icon(
          Icons.favorite,
          size: 30,
        )),
        ListTile(
          title: Text("D A S H B O A R D"),
          leading: Icon(Icons.home),
        ),
        ListTile(
          title: Text("M E S S A G E"),
          leading: Icon(Icons.chat),
        ),
        ListTile(
          title: Text("S E T T I N G S"),
          leading: Icon(Icons.settings),
        ),
        ListTile(
          title: Text("L O G O U T"),
          leading: Icon(Icons.logout),
        )
      ],
    ),
  );

