import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore,this.resetQuiz);

  String get resultPhase
  {
    String resultText;
    if(resultScore<8)
    resultText='you are so awesome!';
    else if(resultScore<16)
    resultText='you are good ';
    else if(resultScore<30)
    resultText='you are bad ';
    else
    resultText='you are Fucking awesome ';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column( 
    children:<Widget>[
    Text(resultPhase,
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
    textAlign: TextAlign.center,
    ),
    FlatButton(child:
     Text('RESTART'),
     onPressed:resetQuiz ,
     color: Colors.blue,
     splashColor: Colors.black,

     )
    ]
      )
    ) ;
  }
}

