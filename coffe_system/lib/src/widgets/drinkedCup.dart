import 'package:flutter/material.dart';

class CupWidget extends StatelessWidget {
  final String cupImage;
  final EdgeInsets? whiteSpace;

  const CupWidget({required this.cupImage, this.whiteSpace});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: whiteSpace ?? EdgeInsets.zero,
      child: SizedBox(height: 40, width: 40, child: Image.asset(cupImage)),
    );
  }
}
