import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'quiz_main.dart';
import 'quiz_end_design.dart';
import 'answer_conditions.dart';

class quiz_app extends StatefulWidget {
  const quiz_app({super.key});

  @override
  State<quiz_app> createState() => _q1State();
}

class _q1State extends State<quiz_app> {

  int? selectedAnswerIndex;
  int questionIndex = 0;


  void picAnswer(int value){
    setState(() {
      selectedAnswerIndex = value;
      final question = questions[questionIndex];

      if(selectedAnswerIndex == question.correctAnswerIndex)
      {
        count++;
      }
    });
  }

  void goToNextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++; // Move to the next question
        selectedAnswerIndex = null; // Clear the selected answer
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length-1;


    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [

                Expanded(
                  child: Center(
                    child: Container(
                      child: Text(question.question, style: TextStyle(fontSize: 30),textAlign: TextAlign.center),
                    ),
                  ),
                ),


                Expanded(child: SizedBox()),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: question.options.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: selectedAnswerIndex == null
                            ? () => picAnswer(index)
                            : null,
                        child: AnswerCard(
                            currentIndex: index,
                            question: question.options[index],
                            isSelected: selectedAnswerIndex == index,
                            selectedAnswerIndex: selectedAnswerIndex,
                            correctAnswerIndex: question.correctAnswerIndex
                        ),

                      );
                    }
                ),


                Expanded(child: SizedBox()),
                isLastQuestion
                    ? button(
                  onpressed: ()
                  {
                    setState(() {

                      score = count;

                      if(score>highscore){
                        highscore = score;
                      }

                      else{
                        highscore = highscore;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => end())
                      );

                    });
                  },
                  label: 'Finish',
                )
                    : button(
                    onpressed: selectedAnswerIndex != null ? goToNextQuestion : null,
                    label: 'Next Question'),


                SizedBox(height: 10)


              ],

            ),
          ),
        ),
      ),

    );
  }
}