import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20, right: 50, left: 50),
      elevation: 20,
      shadowColor: const Color.fromARGB(135, 65, 57, 57),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(top: 15, left: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 212, 114, 21),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        ),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: GoogleFonts.robotoMono(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 236, 237, 238),
          ),
        ),
      ),
    );
  }
}

