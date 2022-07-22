import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ProfileField(
      {required this.icon, required this.text, required this.arrowShow});
  final IconData icon;
  final String text;
  final bool arrowShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, right: 50, left: 50),
      height: 60,
      padding: const EdgeInsets.only(left: 15, right: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 58, 58, 57),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 25,
                color: const Color.fromARGB(255, 170, 170, 173),
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 170, 170, 173),
                ),
              ),
            ],
          ),
          arrowShow
              ? const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Color.fromARGB(255, 170, 170, 173),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}