import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); 
  }
}

class _MyAppState extends State<MyApp> {
var _qusIndex=0;
int _total_score=0;

void _resetQuiz()
{
  setState(() {
     _qusIndex=0;
     _total_score=0;
     });
}
final  _question=[
   {
     'questionText':'what\'s your favourite color?',
     'answers':[{'text':'Black','score':10},
     {'text':'Red','score':5},
     {'text':'Green','score':3},
     {'text':'white','score':2} ],
   },
   {
     'questionText':'whats ur fav animal?',
     'answers':[{'text':'cat','score':10},
     {'text':'rat','score':5},
     {'text':'elephant','score':3},
     {'text':'rabbit','score':2}],
   },
   {
     'questionText':'what\'s your favourite day?',
     'answers':[{'text':'sunday','score':10},
     {'text':'monday','score':5},
     {'text':'saturday','score':3},
     {'text':'friday','score':2}],
   },
 ];

 void _ansQus(int score){
  
   _total_score+=score;
   setState(() {
     _qusIndex++;
      if (_qusIndex<_question.length)
     print('more questions');
     else
     print('no more qus');
     });

   }
 

  Widget build(BuildContext context){
    
  return MaterialApp(home: Scaffold(
    appBar:AppBar(title: Text('My App'),
    ),
    body:(_qusIndex<_question.length) ? 
    Quiz(
      ansQus:_ansQus,
      qusIndex: _qusIndex,
      question: _question,
      )
      : Result(_total_score,_resetQuiz)
    )
    );
  }

} 