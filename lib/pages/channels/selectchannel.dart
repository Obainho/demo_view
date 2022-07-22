import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'channels.dart';

class SelectChannels extends StatelessWidget {
  const SelectChannels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 35, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 27, 56),
        centerTitle: true,
        title: Text(
          "Channel Listing",
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
            padding:
                const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 5),
            child: Column(
              children: [
                const TileRow(
                  icon: Icons.queue_music,
                  text: "A-Magic Urban",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.wifi_channel,
                  text: "Discovery world",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.movie_outlined,
                  text: "MTV Base",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.sports_tennis_outlined,
                  text: "Super Sports II",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.sports_soccer_outlined,
                  text: "Super Sports III",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.people,
                  text: "E! channel",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.library_music_sharp,
                  text: "Trace Tv",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.movie_creation_outlined,
                  text: "Magic movies",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.movie_creation_outlined,
                  text: "African Magic",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.queue_music_outlined,
                  text: "Soundcity Music",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.baby_changing_station_outlined,
                  text: "Nickelodeon",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.movie_creation_outlined,
                  text: "M-net Series",
                  subscribe: false,
                ),
                const TileRow(
                  icon: Icons.movie_creation_outlined,
                  text: "Zee world",
                  subscribe: true,
                ),
                const TileRow(
                  icon: Icons.movie_filter_outlined,
                  text: "Telemundo",
                  subscribe: true,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 60,
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 216, 103, 11),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Other options',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 236, 237, 238),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Obainho Designs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 236, 237, 238),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
