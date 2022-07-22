import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 33, 34),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.countertops,
              size: 70,
              color: Color.fromARGB(255, 11, 151, 144),
            ),
            const SizedBox(height: 20),
            Text(
              "Records Counter",
              style: GoogleFonts.robotoMono(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 11, 151, 144),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
