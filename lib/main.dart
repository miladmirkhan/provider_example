import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<count>(
      create: (context)=> count(),

      child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
       
      ),
      
      home:  CountApp()
    ),
    );
  }
}

class CountApp extends StatelessWidget {
  
  Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("milad mirkhan majeed"),
  ),
  body: Center(
    child: Consumer<count>(
      builder: (context,count,child){
        return Text("${count.getnum}",style: TextStyle(fontSize: 45),);
      },
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed:() {
Provider.of<count>(context,listen: false).incrementnum();
    },
    child: Icon(Icons.add),
  ),
);
  }}