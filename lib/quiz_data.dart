/*final List<Map<String,dynamic>> quizData=[
  {
  'question':'What is the Capital of India ?',
    'answers':['Mumbai','Delhi','Kolkata','Bengal'],
    'correctAnswer':1,
  },
  {
    'question':'Which planet is known as Red Planet?',
    'answers':['Earth','Mars','Venus','Jupiter'],
    'correctAnswer':1,
  },
  {
    'question':'What is the currency of Japan ?',
    'answers':['Yen','Doller','Euro','Pound'],
    'correctAnswer':0,
  },
  {
    'question':'Which one is the largest mammal ?',
    'answers':['Elephant','Giraffe','Blue whale','Hippopotamus'],
    'correctAnswer':2,
  },
  {
    'question':'Which is the largest continent ?',
    'answers':['Asia','Africa','Europe','Australia'],
    'correctAnswer':0,
  }
];*/




import 'package:quiz_app/questions.dart';

List<Question> quizData = [
  Question(
    question: 'What is the capital of India?',
    answers: ['Mumbai', 'Delhi', 'Kolkata', 'Bengal'],
    correctAnswer: 1,
  ),
  Question(
    question: 'Which planet is known as the Red Planet?',
    answers: ['Earth', 'Mars', 'Venus', 'Jupiter'],
    correctAnswer: 1,
  ),
  Question(
    question: 'What is the currency of Japan?',
    answers: ['Yen', 'Dollar', 'Euro', 'Pound'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which one is the largest mammal?',
    answers: ['Elephant', 'Giraffe', 'Blue Whale', 'Hippopotamus'],
    correctAnswer: 2,
  ),
  Question(
    question: 'Which is the largest continent?',
    answers: ['Asia', 'Africa', 'Europe', 'Australia'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest ocean?',
    answers: ['Atlantic', 'Indian', 'Arctic', 'Pacific'],
    correctAnswer: 3,
  ),
  Question(
    question: 'Which is the largest country in the world?',
    answers: ['Russia', 'Canada', 'China', 'USA'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest desert in the world?',
    answers: ['Sahara', 'Arabian', 'Gobi', 'Kalahari'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest river in the world?',
    answers: ['Amazon', 'Nile', 'Yangtze', 'Mississippi'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest mountain in the world?',
    answers: ['Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest forest in the world?',
    answers: ['Amazon', 'Congo', 'Daintree', 'Taiga'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest lake in the world?',
    answers: ['Caspian Sea', 'Superior', 'Victoria', 'Huron'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest island in the world?',
    answers: ['Greenland', 'New Guinea', 'Borneo', 'Madagascar'],
    correctAnswer: 0,
  ),
  Question(
    question: 'Which is the largest dam in the world?',
    answers: ['Three Gorges', 'Itaipu', 'Xiluodu', 'Guri'],
    correctAnswer: 0,
  ),
];
