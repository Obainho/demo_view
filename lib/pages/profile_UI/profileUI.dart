import 'package:flutter/material.dart';
import 'profileField.dart';

class Profile_UI extends StatelessWidget {
  const Profile_UI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 12, 12),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Stack(
              children: [
                const Positioned(
                  top: 20,
                  left: 20,
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color.fromARGB(255, 224, 215, 215),
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Color.fromARGB(255, 224, 215, 215),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                          'Assets/Images/placeholder.png',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Profile view",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 248, 244, 244),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        "profile@view.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 248, 244, 244),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 15, right: 50, left: 50),
                        height: 60,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 230, 211, 42),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: const Center(
                          child: Text(
                            "Upgrade to Premium",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 31, 29, 29),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const ProfileField(
                        icon: Icons.shopping_bag_outlined,
                        text: 'Your order history',
                        arrowShow: true,
                      ),
                      const SizedBox(height: 5),
                      const ProfileField(
                        icon: Icons.help_outline,
                        text: 'Help and Support',
                        arrowShow: true,
                      ),
                      const SizedBox(height: 5),
                      const ProfileField(
                        icon: Icons.card_giftcard,
                        text: 'Load gift voucher',
                        arrowShow: true,
                      ),
                      const SizedBox(height: 5),
                      const ProfileField(
                        icon: Icons.logout,
                        text: 'Logout',
                        arrowShow: false,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Obainho Designs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 243, 229, 229),
                        ),
                      ),
                    ],
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