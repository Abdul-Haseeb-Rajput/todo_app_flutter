import 'package:flutter/material.dart';
import 'package:todo_app/text_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  Function(int)? saveEdit;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    this.saveEdit,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // to get input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                hintText: "Enter a task",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // cancel button
                CustBotton(
                  color: Colors.white,
                  onPressed: onCancel,
                  text: 'Cancel',
                  child: null,
                ),
                SizedBox(
                  width: 12,
                ),
                // Save button
                CustBotton(
                  color: Colors.green[200],
                  onPressed: onSave,
                  saveEditTask: saveEdit,
                  text: 'Save',
                  child: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
