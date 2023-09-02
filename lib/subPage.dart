import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubPage extends StatelessWidget{
  late String Title;

  SubPage(String mainText);


  subPage(String sTitle){
    Title = sTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text('Title',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
  ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back To Home',style: TextStyle(color: Colors.black),),
       style: ButtonStyle(
         backgroundColor: MaterialStateProperty.all(Colors.grey.shade400)
       ),
        ),
      ),
    );
  }

}