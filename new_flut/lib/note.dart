import 'package:flutter/material.dart';

class MyNotesScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(hintText: 'Enter your note'),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle adding note functionality here
              },
              child: Text('Add Note'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
