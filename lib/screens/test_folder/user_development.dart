import 'package:flutter/material.dart';
import 'package:guideasy/utils/constants.dart';
import 'package:guideasy/utils/custom_top_navigation_bar.dart';

class UnderDevelpment extends StatelessWidget {
  const UnderDevelpment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            customTopNavigationBar(context: context),
            Spacer(),
            Image.network(
              'http://sharonkgilbert.com/wp-content/uploads/2015/12/Under-construction.png',
              height: 150,
            ),
            smallHeightGap,
            const Text(
              'Under construction...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}