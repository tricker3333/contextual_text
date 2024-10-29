# contextual_text

A Flutter package that styles text based on specific keywords. Useful for apps that display dynamic or user-generated content with varying contexts.

## Usage

```dart
import 'package:contextual_text/contextual_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ContextualText(
            text: 'This is an urgent message with some positive vibes!',
            defaultStyle: TextStyle(color: Colors.black),
            keywordStyles: {
              'urgent': TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              'positive': TextStyle(color: Colors.green),
            },
          ),
        ),
      ),
    );
  }
}
