import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'options.dart';

class SelectLocations extends StatelessWidget {
  const SelectLocations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 39, 39),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 27, 56),
        centerTitle: true,
        title: Text(
          "Select Location",
          style: GoogleFonts.robotoMono(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white38,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'Assets/Images/placeholder.png',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Pick an option",
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoMono(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 204, 204, 204),
            ),
          ),
          const SizedBox(height: 20),
          const OptionsCard(text: "Australia"),
          const OptionsCard(text: "Brazil"),
          const OptionsCard(text: "Canada"),
          const OptionsCard(text: "Germany"),
          const OptionsCard(text: "South Africa"),
          const OptionsCard(text: "United Kingdom"),
          const OptionsCard(text: "United States"),
          const SizedBox(height: 40),
          const Text(
            'Obainho Designs',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 204, 204, 204),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

