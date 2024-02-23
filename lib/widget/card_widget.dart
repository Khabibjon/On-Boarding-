import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final bool isBlack;
  final bool isWhite;

  const CardWidget({
    super.key,
    required this.title,
    this.isBlack = true,
    this.isWhite = true,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 148,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xff191D21), width: 1),
        color: isBlack ? const Color(0xffFFFFFF) : const Color(0xff191D21),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: isWhite ? const Color(0xffFFFFFF) : const Color(0xff191D21),
          ),
        ),
      ),
    );
  }
}
