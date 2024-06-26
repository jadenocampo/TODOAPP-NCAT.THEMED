import 'package:flutter/material.dart';
import 'package:my_flutter_project/utilities/button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // user input 
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          // buttons ->. save n cacnel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 8),
              
              MyButton(text: "Cancel", onPressed: onCancel),

          ],
        ),
        ], 
      ),
      ),
    );
  }
}