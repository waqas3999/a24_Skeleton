import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Foreground extends StatelessWidget {
  const Foreground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/a24_logo_white.png",
          width: 127,
          height: 50,
        ),
        const Spacer(),
        Text(
          'POWERED BY',
          style: heading2,
        ),
        const SizedBox(height: 6),
        RichText(
          text: TextSpan(
            text: 'Danat',
            style: heading2,
            children: <TextSpan>[
              TextSpan(text: ' Fz LLC', style: heading1),
            ],
          ),
        ),
        const SizedBox(height: 31),
      ],
    );
  }
}
