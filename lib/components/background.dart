import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.content}) : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'lib/assets/codeImage.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            child: content,
          ),
        ],
      ),
    );
  }
}
