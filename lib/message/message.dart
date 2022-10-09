import 'package:flutter/material.dart';

class meassage extends StatefulWidget {
  const meassage({Key? key}) : super(key: key);

  @override
  State<meassage> createState() => _meassageState();
}

class _meassageState extends State<meassage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('work processing'),
      ),
    );
  }
}
