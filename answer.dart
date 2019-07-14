import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  String answerText;
  Answer(this.selectHandler,this.answerText);
 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
    
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor:Colors.white,
        onPressed:selectHandler,
      ),
    );

  }
}