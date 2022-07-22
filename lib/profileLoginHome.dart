import 'package:flutter/material.dart';

class ProfileLoginHome extends StatelessWidget {
  const ProfileLoginHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 39, 39),
      body: Padding(
        padding: const EdgeInsets.only(top: 130, left: 20, right: 20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                "Assets/Images/placeholder.png",
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome back, ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(246, 95, 96, 97)),
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 250, 251, 252)),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 60,
              width: 300,
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              color: const Color.fromARGB(255, 51, 49, 49),
              child: Row(
                children: const [
                  Icon(Icons.lock_outline,
                      size: 20, color: Color.fromARGB(255, 92, 92, 92)),
                  SizedBox(width: 5),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 154, 156),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              alignment: Alignment.centerRight,
              child: const Text(
                "Forgot password?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 14, 10, 255)),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 184, 119, 34),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const Text(
                "LOGIN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 202, 203, 204),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Not you? ",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 100, 102, 104)),
                ),
                Text(
                  "Unlock device",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 241, 153, 38)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
