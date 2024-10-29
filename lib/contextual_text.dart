import 'package:flutter/material.dart';

class ContextualText extends StatelessWidget {
  final String text;
  final TextStyle defaultStyle;
  final Map<String, TextStyle> keywordStyles;

  const ContextualText({
    super.key,
    required this.text,
    required this.defaultStyle,
    required this.keywordStyles,
  });

  List<TextSpan> _applyStyles() {
    List<TextSpan> spans = [];
    List<String> words = text.split(' ');

    for (var word in words) {
      TextStyle? style;

      keywordStyles.forEach((keyword, textStyle) {
        if (word.toLowerCase().contains(keyword.toLowerCase())) {
          style = textStyle;
        }
      });

      spans.add(TextSpan(text: "$word ", style: style ?? defaultStyle));
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _applyStyles(),
        style: defaultStyle,
      ),
    );
  }
}
