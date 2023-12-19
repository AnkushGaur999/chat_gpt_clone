import 'package:chatgpt_clone/widget/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardBackground = const Color(0xFF444654);



List<DropdownMenuItem<String>>? get getModelsItems {
  List<DropdownMenuItem<String>>? modelItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
            value: models[index],
                  child: TextWidget(
                label: models[index],
              )));
  return modelItems;
}

final messages = [
  {"message": "Hi, how are you?", "userType": 0},
  {
    "message": "Hello! I'm a chatbot. How can I assist you today?",
    "userType": 1
  },
  {"message": "Can you help me find a restaurant nearby?", "userType": 0},
  {"message": "Of course! What is your current location?", "userType": 1},
  {"message": "I am at 123 Main Street.", "userType": 0},
  {
    "message":
        "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 1
  },

  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 0
  },
  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 1
  },

  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 0
  },

  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 1
  },

  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 0
  },

  {
    "message":
    "Great! Here are a few restaurants near you: [restaurant 1], [restaurant 2], [restaurant 3].",
    "userType": 1
  },

];

List<String> models = [
  "Model 1",
  "Model 2",
  "Model 3",
  "Model 4",
  "Model 5",
];
