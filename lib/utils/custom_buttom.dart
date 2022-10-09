import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    Key? key,
    required this.title,
    required this.click,
  }) : super(key: key);

  final String title;
  final Function() click;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 331,
      child: Hero(
        tag: 'cbutton',
        child: ElevatedButton(
          onPressed: click,
          style: ElevatedButton.styleFrom(
            primary: Color(0xff00BE16), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}