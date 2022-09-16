import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Colors.black),
    // focusedBorder: OutlineInputBorder(
     
    //     borderSide:
    //         BorderSide(color: Color.fromARGB(255, 77, 112, 200), width: 2)),
    // enabledBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(color: Color.fromARGB(255, 213, 199, 199), width: 2)),
    // errorBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(color: Color.fromARGB(255, 202, 42, 28), width: 2))
    );

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
    message,
    style: TextStyle(fontSize: 14),
  ),
  backgroundColor: color,
  duration: Duration(seconds: 2),
  action: SnackBarAction(label: "Ok", onPressed: (){},textColor: Colors.white,),
  )
  )

  ;
}
