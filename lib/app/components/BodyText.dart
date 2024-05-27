import 'package:flutter/material.dart';

class BodyTextBold extends StatelessWidget {
  const BodyTextBold(this.texto, {this.textColor = Colors.black, super.key});

  final String texto;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: textColor,
        fontFamily: 'SFPRODISPLAY',
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.start,
    );
  }
}

class BodyTextRegular extends StatelessWidget {
  const BodyTextRegular(this.texto, {this.textColor = Colors.black, super.key});

  final String texto;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: textColor,
        fontFamily: 'SFPRODISPLAY',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.start,
    );
  }
}

class BodyTextSmall extends StatelessWidget {
  const BodyTextSmall(this.texto, {this.textColor = Colors.black, super.key});

  final String texto;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: textColor,
        fontFamily: 'SFPRODISPLAY',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.start,
    );
  }
}
