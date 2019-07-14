import 'package:flutter/material.dart';
import './main.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final Function ansQus;
  final List<Map<String,Object>>question;
  final int qusIndex;
   Quiz({
    @required this.question,
    @required this.ansQus,
    @required this.qusIndex});
 

  

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Question(
        question[qusIndex]['questionText']),
      ...(question[qusIndex]['answers']as List<Map<String,Object>>).map((answer){
        return Answer(()=>ansQus(answer['score']),answer['text']);
      }).toList()
      ],mainAxisAlignment:MainAxisAlignment.center,
    );
  }
}
