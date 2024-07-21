import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
   int currentQuestionNumber=0;
   int score=0;
   List<Color> buttonColor=[
     Colors.white,
     Colors.white,
     Colors.white,Colors.white
   ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 64, 64),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 64, 64),
        title: Text("Quiz APP",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$score/${quizData.length}",
              style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: 80,
            child: Center(
              child: Text(
                '${currentQuestionNumber + 1}',
                style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                //fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2
              )
            )
          ),

          SizedBox(
            height: 20,
          ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 80,
            child: Text(quizData[currentQuestionNumber].question,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
          ),
        ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width:width*0.45 ,
                child: ElevatedButton(onPressed: (){
                  checkAnswer(0);
                },
                  child: Text(quizData[currentQuestionNumber].answers[0]),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor[0],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
              ),

              SizedBox(
                height: 50,
                width:width*0.45 ,
                child: ElevatedButton(onPressed: (){
                  checkAnswer(1);
                },
                  child: Text(quizData[currentQuestionNumber].answers[1]),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[1],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
              ),

            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width:width*0.45 ,
                child: ElevatedButton(onPressed: (){
                  checkAnswer(2);
                },
                  child: Text(quizData[currentQuestionNumber].answers[2]),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[2],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
              ),

              SizedBox(
                height: 50,
                width:width*0.45 ,
                child: ElevatedButton(onPressed: (){
                  checkAnswer(3);
                },
                  child: Text(quizData[currentQuestionNumber].answers[3]),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[3],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
              ),

            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //first icon button
              IconButton(onPressed: (){
                if(currentQuestionNumber>0){
                  currentQuestionNumber--;
                  setState(() {

                  });
                }
              },
              icon: const Icon(Icons.arrow_back,
              size: 30,
              color: Colors.white,)),

              //second icon button
              IconButton(onPressed: (){
                if(currentQuestionNumber<quizData.length-1){
                  currentQuestionNumber++;

                }
                resetButtonColors();
                setState(() {

                });

              },
                  icon: const Icon(Icons.arrow_forward,
                    size: 30,
                    color: Colors.white,))
            ],
          )
        ],
      ),
    );
  }
  void checkAnswer(int selectedAnswer){
    if(selectedAnswer == quizData[currentQuestionNumber].correctAnswer){
      score++;
      buttonColor[selectedAnswer]=Colors.green;
    }
    else{
      buttonColor[selectedAnswer]=Colors.red;
      buttonColor[quizData[currentQuestionNumber].correctAnswer]=Colors.green;
    }
    setState(() {

    });
  }
  void resetButtonColors(){
    buttonColor=[Colors.white,Colors.white,Colors.white,Colors.white];
  }
}
