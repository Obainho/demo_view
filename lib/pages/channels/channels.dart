import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileRow extends StatelessWidget {
  const TileRow(
      {required this.icon, required this.text, required this.subscribe});
  final IconData icon;
  final String text;
  final bool subscribe;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: const Color.fromARGB(255, 236, 237, 238),
      ),
      title: Text(
        text,
        style: GoogleFonts.robotoMono(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 236, 237, 238),
        ),
      ),
      trailing: subscribe
          ? Text(
              'Subscribe',
              style: GoogleFonts.robotoMono(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 236, 237, 238),
              ),
            )
          : Text(
              'Unsubscribe',
              style: GoogleFonts.robotoMono(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 236, 237, 238),
              ),
            ),
    );
  }
}

