import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guideasy/utils/constants.dart';

class verticalDivider extends StatelessWidget {
  const verticalDivider({
    Key? key,
    required this.ic,
  }) : super(key: key);

  final String ic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        largeWidthGap,
        ic.startsWith('assets/icons')
            ? SvgPicture.asset(ic, color: Colors.black)
            : Image.asset(ic),
        largeWidthGap,
        Container(
          width: 1.5,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: smallRound,
          ),
        ),
        largeWidthGap,
      ],
    );
  }
}