import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if(resultScore >= 40) {
      resultText = 'You are PERFECT!';
    }
    else if (resultScore >= 20) {
      resultText = 'Pretty likeable!';
    }
     else if (resultScore >= 10){
      resultText = 'You are strange?!';
     }
     else{
       resultText = 'You are so bad!';
     }
     return(resultText);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity, //We are taking all the width of screen and center it
        margin: EdgeInsets.symmetric(vertical: 250), // for margin from sides
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart Quiz!'),
              textColor: Colors.blue,
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
