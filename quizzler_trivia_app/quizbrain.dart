import 'questions.dart';

class QuizBrain {
  final List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
  ];

  int _questionCount = 0;

  void nextQuestion() {
    if (_questionCount >= _questionBank.length - 1) {
      _questionCount = 0;
    } else {
      _questionCount++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionCount].questionText;
  }

  bool getQuestionAns() {
    return _questionBank[_questionCount].questionAnswer;
  }

  // nextquestion
  // getquestionText
  // getAns
  // reset () qN = 0;
  //

// this is how we use fixed defined lists

  // List<String> _stringList = [
  //   'hell',
  //   'heven',
  //   'villified'
  //       'petrified'
  //       'heros'
  //       'wars to be fought'
  //       'why am i nuts'
  //       'porn is bad boy'
  // ];

  // void _editString(){
  //   _stringList.add('added string',);

  // }

}
