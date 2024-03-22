import 'package:quiz_app/model/quiz_screen_models/questions_model.dart';

class QuizScreenController {
  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      question: "What is Flutter?",
      optionsList: [
        "A programming language",
        "A mobile development framework",
        "An operating system",
        "A design pattern",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "Which programming language is used in Flutter?",
      optionsList: [
        "Java",
        "Dart",
        "Python",
        "Swift",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What widget is at the root of every Flutter app?",
      optionsList: [
        "Scaffold",
        "MaterialApp",
        "Container",
        "AppBar",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the main building block of a Flutter application?",
      optionsList: [
        "Widgets",
        "Classes",
        "Methods",
        "Variables",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What does the 'setState' method do?",
      optionsList: [
        "It updates the UI",
        "It initializes the state",
        "It creates a new widget",
        "It handles asynchronous tasks",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which widget is used for handling user input in Flutter?",
      optionsList: [
        "TextField",
        "Text",
        "Button",
        "Container",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the purpose of the 'main()' function in Flutter?",
      optionsList: [
        "To run the application",
        "To define the app's theme",
        "To handle routing",
        "To create widgets",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the default alignment of widgets in a Column?",
      optionsList: [
        "start",
        "center",
        "end",
        "stretch",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What does the 'crossAxisAlignment' property do in a Row?",
      optionsList: [
        "Aligns children vertically",
        "Aligns children horizontally",
        "Determines the width of children",
        "Determines the height of children",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which widget is used to display a list of items in Flutter?",
      optionsList: [
        "ListView",
        "GridView",
        "Container",
        "Column",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the purpose of the 'async' keyword in Dart?",
      optionsList: [
        "To define a synchronous function",
        "To define a generator function",
        "To handle asynchronous operations",
        "To mark a class as abstract",
      ],
      correctAnswerIndex: 2,
    ),
  ];

  static List<QuestionsModel> mathQuestions = [
    QuestionsModel(
      question: "What is the square root of 144?",
      optionsList: [
        "12",
        "10",
        "8",
        "6",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the result of 7 multiplied by 9?",
      optionsList: [
        "56",
        "63",
        "72",
        "81",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the value of π (pi) rounded to two decimal places?",
      optionsList: [
        "3.14",
        "3.16",
        "3.12",
        "3.18",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the sum of angles in a triangle?",
      optionsList: [
        "90 degrees",
        "180 degrees",
        "270 degrees",
        "360 degrees",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the result of 25 divided by 5?",
      optionsList: [
        "3",
        "5",
        "10",
        "15",
      ],
      correctAnswerIndex: 1,
    )
  ];
  static List<QuestionsModel> sportsQuestions = [
    QuestionsModel(
      question: "What is NBA?",
      optionsList: [
        "A football league",
        "A basketball league",
        "A cricket league",
        "A hockey league",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is FIFA?",
      optionsList: [
        "A basketball league",
        "A cricket league",
        "A hockey league",
        "A football organization",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is MMA?",
      optionsList: [
        "A tennis style",
        "A football style",
        "A martial art style",
        "A rugby style",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is MLB?",
      optionsList: [
        "A basketball league",
        "A football league",
        "A cricket league",
        "A baseball league",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is PGA?",
      optionsList: [
        "A football league",
        "A golf organization",
        "A cricket organization",
        "A basketball league",
      ],
      correctAnswerIndex: 1,
    )
  ];
  static List<QuestionsModel> chemistryQuestions = [
    QuestionsModel(
      question: "What is a chemical bond?",
      optionsList: [
        "Molecule",
        "Reaction",
        "Connection",
        "Attraction",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is an atom?",
      optionsList: [
        "Particle",
        "Compound",
        "Bond",
        "Molecule",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is a catalyst?",
      optionsList: [
        "Enzyme",
        "Accelerator",
        "Inhibitor",
        "Substrate",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a pH?",
      optionsList: [
        "Scale",
        "Level",
        "Indicator",
        "Acidity",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is a compound?",
      optionsList: [
        "Mixture",
        "Element",
        "Molecule",
        "Substance",
      ],
      correctAnswerIndex: 2,
    ),
  ];
  static List<QuestionsModel> historyQuestions = [
    QuestionsModel(
      question: "Who invented the telephone?",
      optionsList: [
        "Bell",
        "Edison",
        "Tesla",
        "Graham",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Where was the Declaration of Independence signed?",
      optionsList: [
        "Philadelphia",
        "New York",
        "Washington",
        "Boston",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Who was the first President of the United States?",
      optionsList: [
        "Washington",
        "Jefferson",
        "Adams",
        "Lincoln",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the capital of France?",
      optionsList: [
        "Paris",
        "Berlin",
        "Rome",
        "London",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which ancient civilization built the Great Pyramid of Giza?",
      optionsList: [
        "Egyptians",
        "Greeks",
        "Romans",
        "Persians",
      ],
      correctAnswerIndex: 0,
    )
  ];
}
