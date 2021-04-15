import 'package:flutter/material.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Minha\n História",
          style: TextStyle(
            shadows: [
              Shadow(
                blurRadius: 4.0,
                color: Colors.tealAccent[700],
                offset: Offset(1.0, 2.0),
              ),
              Shadow(
                blurRadius: 1.0,
                color: Colors.teal,
                offset: Offset(1.0, 2.0),
              ),
            ],
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
