import 'package:flutter/material.dart';
import 'package:untitled/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({Key? key, required this.controller, required this.onSave, required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      content: Container(
        height: 127,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Add a new task"),
            ),


             Padding(
               padding: const EdgeInsets.only(top: 20.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MyButton(text: "Save", onPressed: onSave),

                   MyButton(text: "Cancel", onPressed: onCancel),

                 ],

               ),
             )
          ],
        ),
      ),
    );
  }
}
