import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class SampleImages extends StatelessWidget {
  const SampleImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 33, 34),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 27, 56),
        centerTitle: true,
        title: Text(
          "View Images",
          style: GoogleFonts.robotoMono(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white38,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        children: [
          Padding(
            //Avatar image
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'Assets/Images/profile.jpg',
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(25),
            elevation: 25,
            shadowColor: const Color.fromARGB(135, 65, 57, 57),
            child: Image.network(
              'https://car-images.bauersecure.com/wp-images/3193/1752x1168/r8_decennium_050.jpg?mode=max&quality=90&scale=down',
              errorBuilder: (context, error, stackTrace) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      //width: 300,
                      height: 180,
                    ),
                    const Positioned(
                      top: 20,
                      child: Icon(
                        Icons.error,
                        size: 120,
                        color: Color.fromARGB(249, 224, 48, 24),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Text(
                        "Image Load Error..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(249, 224, 48, 24),
                        ),
                      ),
                    ),
                  ],
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: Text(
                    'Loading... Please wait',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(178, 71, 56, 56),
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(25),
            elevation: 25,
            shadowColor: const Color.fromARGB(135, 65, 57, 57),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      //width: 300,
                      height: 180,
                    ),
                    const Positioned(
                      top: 20,
                      child: Icon(
                        Icons.error,
                        size: 120,
                        color: Color.fromARGB(249, 224, 48, 24),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Text(
                        "Image Load Error..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(249, 224, 48, 24),
                        ),
                      ),
                    ),
                  ],
                );
              },
              placeholder: (context, url) {
                return Image.asset('Assets/Images/placeholder.png');
              },
              imageUrl: 'https://images-cdn.9gag.com/photo/aE8RZy9_700b.jpg',
            ),
          ),
          Card(
            margin: const EdgeInsets.all(25),
            elevation: 25,
            shadowColor: const Color.fromARGB(135, 65, 57, 57),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              'https://images-cdn.9gag.com/photo/aE8RZy9_700b.jpg',
              errorBuilder: (context, error, stackTrace) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      //width: 300,
                      height: 180,
                    ),
                    const Positioned(
                      top: 20,
                      child: Icon(
                        Icons.error,
                        size: 120,
                        color: Color.fromARGB(249, 224, 48, 24),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Text(
                        "Image Load Error..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(249, 224, 48, 24),
                        ),
                      ),
                    ),
                  ],
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(25),
            elevation: 25,
            shadowColor: const Color.fromARGB(135, 65, 57, 57),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              'https://www.aspiringsupercarowners.com/wp-content/uploads/2020/09/18-2.jpg',
              errorBuilder: (context, error, stackTrace) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      //width: 300,
                      height: 180,
                    ),
                    const Positioned(
                      top: 20,
                      child: Icon(
                        Icons.error,
                        size: 120,
                        color: Color.fromARGB(249, 224, 48, 24),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Text(
                        "Image Load Error..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(249, 224, 48, 24),
                        ),
                      ),
                    ),
                  ],
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: Image.asset('Assets/Images/loading.jpg'),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Obainho Designs',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 204, 204, 204),
            ),
          ),
        ],
      ),
    );
  }
}
